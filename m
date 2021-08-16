Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNVF5OEAMGQECTJIATA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BEA3EDEF0
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 23:03:53 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id r25-20020a0568082119b0290268195c546bsf5330323oiw.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 14:03:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629147831; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIK9F5lHqw+xGALwkxecn+VmbzXLLs6hIhYLtu+YxzrTR3ehw5QblTQvGbMCb4VZCH
         2Q7/+gijZpoQKvwwUAxYp9RTdmfYb+TYl90XQhKXTZ8yuekWaq+P8CgcxCfjK9e2upAV
         15B65i7Mnw0VQMXZZrO+zZe6JCY81zkrVzwzFwhJaPOyEwM4NI239PAMVtzdMvtKAYl9
         60GOdP+VjV2Ecz8FJiIY1PcjnDgFdoH+UuDvq+6yTMfFVktM4Oy5K0mjhcaOFhpngc5K
         6EG6Af8yY/R9w/XQKQFJuk6Jzx6DjVAIrg8kO6vhoJZZTM9SmqbOkg6q5Kkvg94QaX05
         +OXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Lw/ZdWv9BuB8R8uNw1Qpcv1W7TZtq8+tglgsBYCrDmc=;
        b=JHrMG9J5kTTBEURx7592mLelbRp+dCDsfo5TZus6LYjWn0jfCIxjIU+5xhKzTW7Yiu
         RGrCiJxJMNSPOXmFxNk3SBKhe21BiksiOzIEmNZoK5CfMuSpzRdEgmpXDLVwE4Le62ep
         i/wOf0xjplW+mEWUqCEUyfreyT5LKJOQJiiKHCltfLgGQSVLCo75Vkas24QiO6d15MBZ
         7wE5z9JjkYVtMPQOXufSNbPDY+/vj4MWjWPxy4IAn6Aifl3cgcS1hUIbzF7tkTcxHGBD
         mICfD+ZO5qr35LD4ek8rI1MYGoFfcZGYFMDnArsRkkN5+jAhKiQvQAjdUpmvWVdqw2T0
         BK9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lw/ZdWv9BuB8R8uNw1Qpcv1W7TZtq8+tglgsBYCrDmc=;
        b=B3dCfHg/5TFg4lChVdguDmfa6NTSQtFbY6SCTgmAMNM2EEAhvS4xnDQM+sPZlwBcZ1
         E41Jslqy+hgbvjWEHpxLEelDLRGaZT8hBdm3wgFYGuczx6o+jgDTHQLLZeeB+9So/fkm
         +gJ7A22G7PDFnxG/muqYZWiOHTWv8pTwPyxEVXZeAxMTiQbCEex0ZtIjQz42rtvR7lkP
         NoQRHD5EAWF45atrlPhFYt8x3VEWqxOjuxrvm+nqJwIaqUouKncCbge9z88jfWDgpU4X
         gtpuqKhujiQTLaV1SyemPaBHpEK4XuMgFr/BP7xz1TgUhLMOcOe/wQpbuiCdzr2anh1K
         XPQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lw/ZdWv9BuB8R8uNw1Qpcv1W7TZtq8+tglgsBYCrDmc=;
        b=HAIcSwudqPWQQ5780pIWhmwYPkE1wT1MUd5O+fEabyVa3znsUapPf/k4GzT1FTI6FW
         vUBR/cVGtRROjf399X05N7p/oZnxUer46EBTpGHjzeSG+ySsE+oMlPvBlpQZLD/QIdVB
         aUEaFVRt03pqMAEXewUlkHrJJSCnIT5kRoQLCE2VQ29x6PU7eBlcTmXxXxslvu2GnBcx
         gvK9l3xJagOf/V7Tz+mrQJZKAOVIRIlFCrpKjjAz7a7hDZV7duTcLDhPYRnEDWwr7uM3
         vJq425wR7TGH9/JBFkbxbrLG862hPY6/WougPwOtIHPBYGKy/ObolZdDUt541cqVTtSq
         M8+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fdw93S4HaeFt36U/eABBdp0G7I1sDc2oQw3GNnYQiYw5Eqp6X
	bCp65g1L8c2p1PWRliQU8kU=
X-Google-Smtp-Source: ABdhPJztvH20TQBvdet1mEilSKs874FFmMxO2xfbIZJZ13rKJSKBcwzRdbIJ6lFN7YyLWSpSgkNtHg==
X-Received: by 2002:a05:6830:4388:: with SMTP id s8mr75761otv.167.1629147830887;
        Mon, 16 Aug 2021 14:03:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:649a:: with SMTP id g26ls152631otl.1.gmail; Mon, 16 Aug
 2021 14:03:50 -0700 (PDT)
X-Received: by 2002:a9d:74d4:: with SMTP id a20mr76918otl.211.1629147830102;
        Mon, 16 Aug 2021 14:03:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629147830; cv=none;
        d=google.com; s=arc-20160816;
        b=N4dwJofLykbCO/ML2telwoRC4wXN9nQUzMzlffP7bc5XOSijX+3sM8IPeTR/jPHfaK
         gYdfdLMVpXwfXuL9Jb3a6MKPa31cgCU20S6kbhXkb0ENPrEYmmSoS+0Yyl4nSA0W8h3V
         ZTGtZJXXWRVw6qv0toSHvQsdv6BXf4Q54HToaPm973um8w8NtATbhDgT01TiT3H2hCOJ
         HioIU1kErtBOxey3NSqFs+Nkb1YWf/hQdDawoAiiLaXwbtsbt6InB0Dc90mXcpZ+ROWD
         LDPyRrlDMVo43XpVrDahZE0yBRwiBfQT6dCrqGqC/yHo77O/62isHfxrWpQEZw6Xh4S3
         RGxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=E4s/HWq8a7NKWpMCkgBxkybHqpNzg/4GAjnRDOHOP7I=;
        b=WsnEPmrzZvMvguOIkjx0Buh7OlAw7ZSwjwDvmipVqBsPHNaAWF+ylpFqTZdU2u0Xem
         YpsYhHlpPJTJagQrRn1IWWg1q/qwUUUhO3/SJePxtaOhf0j0xyWoi/F7tOcxkICgsZLm
         wG/kUsMKOK+qCk6inMgzfUD2zIlH43jPdyjDl7RRFTUzS/sfI7MPudrbQ7zsfXppgDmW
         V9VdtSZKmFYHW3V4OTjCNwNJJ9xPD3l7s98ezw1MZIr8vRJEtWjVmM1v/nT0QNLczuXR
         uk22ILsuCaD5gycKmEZWDO7yCjRY8Gi8xt6dZVMMj3DYwhSFp98orflnk/QAWHKd19T0
         JYgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id b9si11684ooq.1.2021.08.16.14.03.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 14:03:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="238015311"
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; 
   d="gz'50?scan'50,208,50";a="238015311"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2021 14:03:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; 
   d="gz'50?scan'50,208,50";a="510022135"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 16 Aug 2021 14:03:44 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mFjln-000QxY-Fk; Mon, 16 Aug 2021 21:03:43 +0000
Date: Tue, 17 Aug 2021 05:03:28 +0800
From: kernel test robot <lkp@intel.com>
To: Quinn Tran <qutran@marvell.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Hannes Reinecke <hare@suse.de>,
	Himanshu Madhani <himanshu.madhani@oracle.com>,
	Larry Wisneski <Larry.Wisneski@marvell.com>,
	Duane Grigsby <duane.grigsby@marvell.com>,
	Rick Hicksted Jr <rhicksted@marvell.com>,
	Nilesh Javali <njavali@marvell.com>
Subject: [linux-next:master 3020/8423]
 drivers/scsi/qla2xxx/qla_edif.c:1105:44: warning: taking address of packed
 member 'port_id' of class or structure 'qla_sa_update_frame' may result in
 an unaligned pointer value
Message-ID: <202108170521.p8K044dP-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   b9011c7e671dbbf59bb753283ddfd03f0c9eb865
commit: dd30706e73b70d67e88fdaca688db7a3374fd5de [3020/8423] scsi: qla2xxx: edif: Add key update
config: i386-randconfig-r023-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 44d0a99a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=dd30706e73b70d67e88fdaca688db7a3374fd5de
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout dd30706e73b70d67e88fdaca688db7a3374fd5de
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   clang-14: warning: optimization flag '-falign-jumps=0' is not supported [-Wignored-optimization-argument]
   In file included from drivers/scsi/qla2xxx/qla_edif.c:6:
   In file included from drivers/scsi/qla2xxx/qla_def.h:12:
   In file included from include/linux/module.h:14:
   In file included from include/linux/buildid.h:5:
   In file included from include/linux/mm_types.h:9:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:60:
   arch/x86/include/asm/thread_info.h:172:13: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
           oldframe = __builtin_frame_address(1);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/thread_info.h:174:11: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
                   frame = __builtin_frame_address(2);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/qla2xxx/qla_edif.c:463:6: warning: no previous prototype for function 'qla2x00_release_all_sadb' [-Wmissing-prototypes]
   void qla2x00_release_all_sadb(struct scsi_qla_host *vha, struct fc_port *fcport)
        ^
   drivers/scsi/qla2xxx/qla_edif.c:463:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void qla2x00_release_all_sadb(struct scsi_qla_host *vha, struct fc_port *fcport)
   ^
   static 
>> drivers/scsi/qla2xxx/qla_edif.c:1105:44: warning: taking address of packed member 'port_id' of class or structure 'qla_sa_update_frame' may result in an unaligned pointer value [-Waddress-of-packed-member]
           fcport = qla2x00_find_fcport_by_pid(vha, &sa_frame.port_id);
                                                     ^~~~~~~~~~~~~~~~
   4 warnings generated.


vim +1105 drivers/scsi/qla2xxx/qla_edif.c

  1067	
  1068	int
  1069	qla24xx_sadb_update(struct bsg_job *bsg_job)
  1070	{
  1071		struct	fc_bsg_reply	*bsg_reply = bsg_job->reply;
  1072		struct Scsi_Host *host = fc_bsg_to_shost(bsg_job);
  1073		scsi_qla_host_t *vha = shost_priv(host);
  1074		fc_port_t		*fcport = NULL;
  1075		srb_t			*sp = NULL;
  1076		struct edif_list_entry *edif_entry = NULL;
  1077		int			found = 0;
  1078		int			rval = 0;
  1079		int result = 0;
  1080		struct qla_sa_update_frame sa_frame;
  1081		struct srb_iocb *iocb_cmd;
  1082	
  1083		ql_dbg(ql_dbg_edif + ql_dbg_verbose, vha, 0x911d,
  1084		    "%s entered, vha: 0x%p\n", __func__, vha);
  1085	
  1086		sg_copy_to_buffer(bsg_job->request_payload.sg_list,
  1087		    bsg_job->request_payload.sg_cnt, &sa_frame,
  1088		    sizeof(struct qla_sa_update_frame));
  1089	
  1090		/* Check if host is online */
  1091		if (!vha->flags.online) {
  1092			ql_log(ql_log_warn, vha, 0x70a1, "Host is not online\n");
  1093			rval = -EIO;
  1094			SET_DID_STATUS(bsg_reply->result, DID_ERROR);
  1095			goto done;
  1096		}
  1097	
  1098		if (vha->e_dbell.db_flags != EDB_ACTIVE) {
  1099			ql_log(ql_log_warn, vha, 0x70a1, "App not started\n");
  1100			rval = -EIO;
  1101			SET_DID_STATUS(bsg_reply->result, DID_ERROR);
  1102			goto done;
  1103		}
  1104	
> 1105		fcport = qla2x00_find_fcport_by_pid(vha, &sa_frame.port_id);
  1106		if (fcport) {
  1107			found = 1;
  1108			if (sa_frame.flags == QLA_SA_UPDATE_FLAGS_TX_KEY)
  1109				fcport->edif.tx_bytes = 0;
  1110			if (sa_frame.flags == QLA_SA_UPDATE_FLAGS_RX_KEY)
  1111				fcport->edif.rx_bytes = 0;
  1112		}
  1113	
  1114		if (!found) {
  1115			ql_dbg(ql_dbg_edif, vha, 0x70a3, "Failed to find port= %06x\n",
  1116			    sa_frame.port_id.b24);
  1117			rval = -EINVAL;
  1118			SET_DID_STATUS(bsg_reply->result, DID_TARGET_FAILURE);
  1119			goto done;
  1120		}
  1121	
  1122		/* make sure the nport_handle is valid */
  1123		if (fcport->loop_id == FC_NO_LOOP_ID) {
  1124			ql_dbg(ql_dbg_edif, vha, 0x70e1,
  1125			    "%s: %8phN lid=FC_NO_LOOP_ID, spi: 0x%x, DS %d, returning NO_CONNECT\n",
  1126			    __func__, fcport->port_name, sa_frame.spi,
  1127			    fcport->disc_state);
  1128			rval = -EINVAL;
  1129			SET_DID_STATUS(bsg_reply->result, DID_NO_CONNECT);
  1130			goto done;
  1131		}
  1132	
  1133		/* allocate and queue an sa_ctl */
  1134		result = qla24xx_check_sadb_avail_slot(bsg_job, fcport, &sa_frame);
  1135	
  1136		/* failure of bsg */
  1137		if (result == INVALID_EDIF_SA_INDEX) {
  1138			ql_dbg(ql_dbg_edif, vha, 0x70e1,
  1139			    "%s: %8phN, skipping update.\n",
  1140			    __func__, fcport->port_name);
  1141			rval = -EINVAL;
  1142			SET_DID_STATUS(bsg_reply->result, DID_ERROR);
  1143			goto done;
  1144	
  1145		/* rx delete failure */
  1146		} else if (result == RX_DELETE_NO_EDIF_SA_INDEX) {
  1147			ql_dbg(ql_dbg_edif, vha, 0x70e1,
  1148			    "%s: %8phN, skipping rx delete.\n",
  1149			    __func__, fcport->port_name);
  1150			SET_DID_STATUS(bsg_reply->result, DID_OK);
  1151			goto done;
  1152		}
  1153	
  1154		ql_dbg(ql_dbg_edif, vha, 0x70e1,
  1155		    "%s: %8phN, sa_index in sa_frame: %d flags %xh\n",
  1156		    __func__, fcport->port_name, sa_frame.fast_sa_index,
  1157		    sa_frame.flags);
  1158	
  1159		/* looking for rx index and delete */
  1160		if (((sa_frame.flags & SAU_FLG_TX) == 0) &&
  1161		    (sa_frame.flags & SAU_FLG_INV)) {
  1162			uint16_t nport_handle = fcport->loop_id;
  1163			uint16_t sa_index = sa_frame.fast_sa_index;
  1164	
  1165			/*
  1166			 * make sure we have an existing rx key, otherwise just process
  1167			 * this as a straight delete just like TX
  1168			 * This is NOT a normal case, it indicates an error recovery or key cleanup
  1169			 * by the ipsec code above us.
  1170			 */
  1171			edif_entry = qla_edif_list_find_sa_index(fcport, fcport->loop_id);
  1172			if (!edif_entry) {
  1173				ql_dbg(ql_dbg_edif, vha, 0x911d,
  1174				    "%s: WARNING: no active sa_index for nport_handle 0x%x, forcing delete for sa_index 0x%x\n",
  1175				    __func__, fcport->loop_id, sa_index);
  1176				goto force_rx_delete;
  1177			}
  1178	
  1179			/*
  1180			 * if we have a forced delete for rx, remove the sa_index from the edif list
  1181			 * and proceed with normal delete.  The rx delay timer should not be running
  1182			 */
  1183			if ((sa_frame.flags & SAU_FLG_FORCE_DELETE) == SAU_FLG_FORCE_DELETE) {
  1184				qla_edif_list_delete_sa_index(fcport, edif_entry);
  1185				ql_dbg(ql_dbg_edif, vha, 0x911d,
  1186				    "%s: FORCE DELETE flag found for nport_handle 0x%x, sa_index 0x%x, forcing DELETE\n",
  1187				    __func__, fcport->loop_id, sa_index);
  1188				kfree(edif_entry);
  1189				goto force_rx_delete;
  1190			}
  1191	
  1192			/*
  1193			 * delayed rx delete
  1194			 *
  1195			 * if delete_sa_index is not invalid then there is already
  1196			 * a delayed index in progress, return bsg bad status
  1197			 */
  1198			if (edif_entry->delete_sa_index != INVALID_EDIF_SA_INDEX) {
  1199				struct edif_sa_ctl *sa_ctl;
  1200	
  1201				ql_dbg(ql_dbg_edif, vha, 0x911d,
  1202				    "%s: delete for lid 0x%x, delete_sa_index %d is pending\n",
  1203				    __func__, edif_entry->handle, edif_entry->delete_sa_index);
  1204	
  1205				/* free up the sa_ctl that was allocated with the sa_index */
  1206				sa_ctl = qla_edif_find_sa_ctl_by_index(fcport, sa_index,
  1207				    (sa_frame.flags & SAU_FLG_TX));
  1208				if (sa_ctl) {
  1209					ql_dbg(ql_dbg_edif, vha, 0x3063,
  1210					    "%s: freeing sa_ctl for index %d\n",
  1211					    __func__, sa_ctl->index);
  1212					qla_edif_free_sa_ctl(fcport, sa_ctl, sa_ctl->index);
  1213				}
  1214	
  1215				/* release the sa_index */
  1216				ql_dbg(ql_dbg_edif, vha, 0x3063,
  1217				    "%s: freeing sa_index %d, nph: 0x%x\n",
  1218				    __func__, sa_index, nport_handle);
  1219				qla_edif_sadb_delete_sa_index(fcport, nport_handle, sa_index);
  1220	
  1221				rval = -EINVAL;
  1222				SET_DID_STATUS(bsg_reply->result, DID_ERROR);
  1223				goto done;
  1224			}
  1225	
  1226			fcport->edif.rekey_cnt++;
  1227	
  1228			/* configure and start the rx delay timer */
  1229			edif_entry->fcport = fcport;
  1230			edif_entry->timer.expires = jiffies + RX_DELAY_DELETE_TIMEOUT * HZ;
  1231	
  1232			ql_dbg(ql_dbg_edif, vha, 0x911d,
  1233			    "%s: adding timer, entry: %p, delete sa_index %d, lid 0x%x to edif_list\n",
  1234			    __func__, edif_entry, sa_index, nport_handle);
  1235	
  1236			/*
  1237			 * Start the timer when we queue the delayed rx delete.
  1238			 * This is an activity timer that goes off if we have not
  1239			 * received packets with the new sa_index
  1240			 */
  1241			add_timer(&edif_entry->timer);
  1242	
  1243			/*
  1244			 * sa_delete for rx key with an active rx key including this one
  1245			 * add the delete rx sa index to the hash so we can look for it
  1246			 * in the rsp queue.  Do this after making any changes to the
  1247			 * edif_entry as part of the rx delete.
  1248			 */
  1249	
  1250			ql_dbg(ql_dbg_edif, vha, 0x911d,
  1251			    "%s: delete sa_index %d, lid 0x%x to edif_list. bsg done ptr %p\n",
  1252			    __func__, sa_index, nport_handle, bsg_job);
  1253	
  1254			edif_entry->delete_sa_index = sa_index;
  1255	
  1256			bsg_job->reply_len = sizeof(struct fc_bsg_reply);
  1257			bsg_reply->result = DID_OK << 16;
  1258	
  1259			goto done;
  1260	
  1261		/*
  1262		 * rx index and update
  1263		 * add the index to the list and continue with normal update
  1264		 */
  1265		} else if (((sa_frame.flags & SAU_FLG_TX) == 0) &&
  1266		    ((sa_frame.flags & SAU_FLG_INV) == 0)) {
  1267			/* sa_update for rx key */
  1268			uint32_t nport_handle = fcport->loop_id;
  1269			uint16_t sa_index = sa_frame.fast_sa_index;
  1270			int result;
  1271	
  1272			/*
  1273			 * add the update rx sa index to the hash so we can look for it
  1274			 * in the rsp queue and continue normally
  1275			 */
  1276	
  1277			ql_dbg(ql_dbg_edif, vha, 0x911d,
  1278			    "%s:  adding update sa_index %d, lid 0x%x to edif_list\n",
  1279			    __func__, sa_index, nport_handle);
  1280	
  1281			result = qla_edif_list_add_sa_update_index(fcport, sa_index,
  1282			    nport_handle);
  1283			if (result) {
  1284				ql_dbg(ql_dbg_edif, vha, 0x911d,
  1285				    "%s: SA_UPDATE failed to add new sa index %d to list for lid 0x%x\n",
  1286				    __func__, sa_index, nport_handle);
  1287			}
  1288		}
  1289		if (sa_frame.flags & SAU_FLG_GMAC_MODE)
  1290			fcport->edif.aes_gmac = 1;
  1291		else
  1292			fcport->edif.aes_gmac = 0;
  1293	
  1294	force_rx_delete:
  1295		/*
  1296		 * sa_update for both rx and tx keys, sa_delete for tx key
  1297		 * immediately process the request
  1298		 */
  1299		sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
  1300		if (!sp) {
  1301			rval = -ENOMEM;
  1302			SET_DID_STATUS(bsg_reply->result, DID_IMM_RETRY);
  1303			goto done;
  1304		}
  1305	
  1306		sp->type = SRB_SA_UPDATE;
  1307		sp->name = "bsg_sa_update";
  1308		sp->u.bsg_job = bsg_job;
  1309		/* sp->free = qla2x00_bsg_sp_free; */
  1310		sp->free = qla2x00_rel_sp;
  1311		sp->done = qla2x00_bsg_job_done;
  1312		iocb_cmd = &sp->u.iocb_cmd;
  1313		iocb_cmd->u.sa_update.sa_frame  = sa_frame;
  1314	
  1315		rval = qla2x00_start_sp(sp);
  1316		if (rval != QLA_SUCCESS) {
  1317			ql_log(ql_dbg_edif, vha, 0x70e3,
  1318			    "qla2x00_start_sp failed=%d.\n", rval);
  1319	
  1320			qla2x00_rel_sp(sp);
  1321			rval = -EIO;
  1322			SET_DID_STATUS(bsg_reply->result, DID_IMM_RETRY);
  1323			goto done;
  1324		}
  1325	
  1326		ql_dbg(ql_dbg_edif, vha, 0x911d,
  1327		    "%s:  %s sent, hdl=%x, portid=%06x.\n",
  1328		    __func__, sp->name, sp->handle, fcport->d_id.b24);
  1329	
  1330		fcport->edif.rekey_cnt++;
  1331		bsg_job->reply_len = sizeof(struct fc_bsg_reply);
  1332		SET_DID_STATUS(bsg_reply->result, DID_OK);
  1333	
  1334		return 0;
  1335	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108170521.p8K044dP-lkp%40intel.com.

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
OiRfOOxKAgA=

--HcAYCG3uE/tztfnV--
