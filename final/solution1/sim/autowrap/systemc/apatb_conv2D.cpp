// ==============================================================
// File generated on Wed Dec 18 10:59:51 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "gmem0"
#define AUTOTB_TVIN_gmem0  "../tv/cdatafile/c.conv2D_conv2D.autotvin_gmem0.dat"
// wrapc file define: "gmem1"
#define AUTOTB_TVIN_gmem1  "../tv/cdatafile/c.conv2D_conv2D.autotvin_gmem1.dat"
// wrapc file define: "gmem2"
#define AUTOTB_TVOUT_gmem2  "../tv/cdatafile/c.conv2D_conv2D.autotvout_gmem2.dat"
#define AUTOTB_TVIN_gmem2  "../tv/cdatafile/c.conv2D_conv2D.autotvin_gmem2.dat"
// wrapc file define: "input_r"
#define AUTOTB_TVIN_input_r  "../tv/cdatafile/c.conv2D_conv2D.autotvin_input_r.dat"
// wrapc file define: "kernel"
#define AUTOTB_TVIN_kernel  "../tv/cdatafile/c.conv2D_conv2D.autotvin_kernel.dat"
// wrapc file define: "output_r"
#define AUTOTB_TVIN_output_r  "../tv/cdatafile/c.conv2D_conv2D.autotvin_output_r.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "gmem2"
#define AUTOTB_TVOUT_PC_gmem2  "../tv/rtldatafile/rtl.conv2D_conv2D.autotvout_gmem2.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			gmem0_depth = 0;
			gmem1_depth = 0;
			gmem2_depth = 0;
			input_r_depth = 0;
			kernel_depth = 0;
			output_r_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{gmem0 " << gmem0_depth << "}\n";
			total_list << "{gmem1 " << gmem1_depth << "}\n";
			total_list << "{gmem2 " << gmem2_depth << "}\n";
			total_list << "{input_r " << input_r_depth << "}\n";
			total_list << "{kernel " << kernel_depth << "}\n";
			total_list << "{output_r " << output_r_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int gmem0_depth;
		int gmem1_depth;
		int gmem2_depth;
		int input_r_depth;
		int kernel_depth;
		int output_r_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void conv2D (
int input[5][5],
int kernel[3][3],
int output[3][3]);

extern "C" void AESL_WRAP_conv2D (
int input[5][5],
int kernel[3][3],
int output[3][3])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "gmem2"
		aesl_fh.read(AUTOTB_TVOUT_PC_gmem2, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_gmem2, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_gmem2, AESL_token); // data

			sc_bv<32> *gmem2_pc_buffer = new sc_bv<32>[9];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'gmem2', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'gmem2', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					gmem2_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_gmem2, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_gmem2))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: gmem2
				{
					// bitslice(31, 0)
					// {
						// celement: output(31, 0)
						// {
							sc_lv<32>* output_lv0_0_2_1_lv1_0_2_1 = new sc_lv<32>[9];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: output(31, 0)
						{
							// carray: (0) => (2) @ (1)
							for (int i_0 = 0; i_0 <= 2; i_0 += 1)
							{
								// carray: (0) => (2) @ (1)
								for (int i_1 = 0; i_1 <= 2; i_1 += 1)
								{
									if (&(output[0][0]) != NULL) // check the null address if the c port is array or others
									{
										output_lv0_0_2_1_lv1_0_2_1[hls_map_index].range(31, 0) = sc_bv<32>(gmem2_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: output(31, 0)
						{
							// carray: (0) => (2) @ (1)
							for (int i_0 = 0; i_0 <= 2; i_0 += 1)
							{
								// carray: (0) => (2) @ (1)
								for (int i_1 = 0; i_1 <= 2; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : output[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : output[0][0]
									// output_left_conversion : output[i_0][i_1]
									// output_type_conversion : (output_lv0_0_2_1_lv1_0_2_1[hls_map_index]).to_uint64()
									if (&(output[0][0]) != NULL) // check the null address if the c port is array or others
									{
										output[i_0][i_1] = (output_lv0_0_2_1_lv1_0_2_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] gmem2_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "gmem0"
		char* tvin_gmem0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_gmem0);

		// "gmem1"
		char* tvin_gmem1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_gmem1);

		// "gmem2"
		char* tvin_gmem2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_gmem2);
		char* tvout_gmem2 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_gmem2);

		// "input_r"
		char* tvin_input_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_r);

		// "kernel"
		char* tvin_kernel = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel);

		// "output_r"
		char* tvin_output_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_output_r);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_gmem0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_gmem0, tvin_gmem0);

		sc_bv<32>* gmem0_tvin_wrapc_buffer = new sc_bv<32>[25];

		// RTL Name: gmem0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: input(31, 0)
				{
					// carray: (0) => (4) @ (1)
					for (int i_0 = 0; i_0 <= 4; i_0 += 1)
					{
						// carray: (0) => (4) @ (1)
						for (int i_1 = 0; i_1 <= 4; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : input[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : input[0][0]
							// regulate_c_name       : input
							// input_type_conversion : input[i_0][i_1]
							if (&(input[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> input_tmp_mem;
								input_tmp_mem = input[i_0][i_1];
								gmem0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = input_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 25; i++)
		{
			sprintf(tvin_gmem0, "%s\n", (gmem0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_gmem0, tvin_gmem0);
		}

		tcl_file.set_num(25, &tcl_file.gmem0_depth);
		sprintf(tvin_gmem0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_gmem0, tvin_gmem0);

		// release memory allocation
		delete [] gmem0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_gmem1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_gmem1, tvin_gmem1);

		sc_bv<32>* gmem1_tvin_wrapc_buffer = new sc_bv<32>[9];

		// RTL Name: gmem1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : kernel[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : kernel[0][0]
							// regulate_c_name       : kernel
							// input_type_conversion : kernel[i_0][i_1]
							if (&(kernel[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> kernel_tmp_mem;
								kernel_tmp_mem = kernel[i_0][i_1];
								gmem1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvin_gmem1, "%s\n", (gmem1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_gmem1, tvin_gmem1);
		}

		tcl_file.set_num(9, &tcl_file.gmem1_depth);
		sprintf(tvin_gmem1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_gmem1, tvin_gmem1);

		// release memory allocation
		delete [] gmem1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_gmem2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_gmem2, tvin_gmem2);

		sc_bv<32>* gmem2_tvin_wrapc_buffer = new sc_bv<32>[9];

		// RTL Name: gmem2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: output(31, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : output[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : output[0][0]
							// regulate_c_name       : output
							// input_type_conversion : output[i_0][i_1]
							if (&(output[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> output_tmp_mem;
								output_tmp_mem = output[i_0][i_1];
								gmem2_tvin_wrapc_buffer[hls_map_index].range(31, 0) = output_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvin_gmem2, "%s\n", (gmem2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_gmem2, tvin_gmem2);
		}

		tcl_file.set_num(9, &tcl_file.gmem2_depth);
		sprintf(tvin_gmem2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_gmem2, tvin_gmem2);

		// release memory allocation
		delete [] gmem2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);

		sc_bv<64> input_r_tvin_wrapc_buffer;

		// RTL Name: input_r
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_r, "%s\n", (input_r_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);
		}

		tcl_file.set_num(1, &tcl_file.input_r_depth);
		sprintf(tvin_input_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);

		// [[transaction]]
		sprintf(tvin_kernel, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel, tvin_kernel);

		sc_bv<64> kernel_tvin_wrapc_buffer;

		// RTL Name: kernel
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_kernel, "%s\n", (kernel_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel, tvin_kernel);
		}

		tcl_file.set_num(1, &tcl_file.kernel_depth);
		sprintf(tvin_kernel, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel, tvin_kernel);

		// [[transaction]]
		sprintf(tvin_output_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);

		sc_bv<64> output_r_tvin_wrapc_buffer;

		// RTL Name: output_r
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_output_r, "%s\n", (output_r_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);
		}

		tcl_file.set_num(1, &tcl_file.output_r_depth);
		sprintf(tvin_output_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		conv2D(input, kernel, output);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_gmem2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_gmem2, tvout_gmem2);

		sc_bv<32>* gmem2_tvout_wrapc_buffer = new sc_bv<32>[9];

		// RTL Name: gmem2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: output(31, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : output[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : output[0][0]
							// regulate_c_name       : output
							// input_type_conversion : output[i_0][i_1]
							if (&(output[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> output_tmp_mem;
								output_tmp_mem = output[i_0][i_1];
								gmem2_tvout_wrapc_buffer[hls_map_index].range(31, 0) = output_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvout_gmem2, "%s\n", (gmem2_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_gmem2, tvout_gmem2);
		}

		tcl_file.set_num(9, &tcl_file.gmem2_depth);
		sprintf(tvout_gmem2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_gmem2, tvout_gmem2);

		// release memory allocation
		delete [] gmem2_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "gmem0"
		delete [] tvin_gmem0;
		// release memory allocation: "gmem1"
		delete [] tvin_gmem1;
		// release memory allocation: "gmem2"
		delete [] tvout_gmem2;
		delete [] tvin_gmem2;
		// release memory allocation: "input_r"
		delete [] tvin_input_r;
		// release memory allocation: "kernel"
		delete [] tvin_kernel;
		// release memory allocation: "output_r"
		delete [] tvin_output_r;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

