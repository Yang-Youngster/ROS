#ifndef _BASE_STATE_MACHINE_H
#define _BASE_STATE_MACHINE_H

#include <base_callback.h>

class State_Machine
{

  public:
      State_Machine();
      State_Data_t state_data;
      GPS_Data_t gps_data;



      void process();
};


#endif
 