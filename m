Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW7D2WEAMGQEVJC26YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id AEACE3EAAA3
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 21:09:16 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id z75-20020a4a494e0000b02902860a17bf56sf2506778ooa.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 12:09:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628795355; cv=pass;
        d=google.com; s=arc-20160816;
        b=uRpF+bkrZyg/Cf+6OnPjGHBc9Kn2qACT8M6mHMB1oCicuLWoLxJrbyCtaaPBTJ3Rtz
         8nVWo+g3VnYGS1WxziboU7X7a3jrmASEzFYHefZSbUJ4SlmFGh8mlPBm/48d0u6esPgI
         CAUSk15mdgU9pFOFujZRINuYeZH0XpIDOKGDGyXvRrpJlto2PK1OTTOAhcqazTb6sW1+
         ShqodF95K9l8CHB6MqUDKq8IMCtmFIsHy4SOhAQ3NMKTj/z1LpgG97QimepofTH4c8aa
         F3uV5krn+A5qytt7poBGp1PkQTIIJZvuETN2uqJNQ916pZ2AobspVZgoc5oUcLs0rr6t
         qKsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ng/LsPBe6zEJs6WaN4vK7Pv1zvVa0PdArTM9SwABWTE=;
        b=gHNHwDO7hx294A/vIfO9wd6L4u6IugOxnHfJHC0L3Zlbr2X23EGvQhFU/u2AY6cIwr
         kDeMuuehUXsTojNm5APGhSakecGqfxSeNhuiG08vRlziDIQFEfxrgAqhZ7yrqagoVnK7
         iYkVhrzUt5eE7+Yn3M6UBYF67lueYUVMomSqn47GrqQY8knogdyKkbBi4+j5/DA9ksKa
         a3509pM9uBX0Cr4eAJf8vz586oyxtSM++Gzkx7mgOssZh5vRAmZFsb2l2w1h8Yjq9M2f
         YeuTiq4dr6/SEF1WTkD05QAuAArxXazBsdISKIBYGpM0A4+mD2Eo18ZqZ7BzUAM0hSE3
         1JWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ng/LsPBe6zEJs6WaN4vK7Pv1zvVa0PdArTM9SwABWTE=;
        b=lFxBoIVQ5zNJyHARVi0pCfjXGr8R5qdjtXbi5g5zNNmp6h5KsJEGwh0mAItaBnAx45
         4sm7AO/frL0/oXYP1FMzox6DoEhaIDDidOso7IF7D9JBOmo18+CszJEkxcv2w2SL6r+J
         iu6UKTwf8vkEju3RTl9528gggYS9dczqzLut+WV4AkLpCXx92OtWGdvhDm26xYE/vwPg
         sdc96gXOgvgW+8twtFewdJfD/JdTKajFvaYewtrhcILo09I4AOJPO8D3gR6c1KcJNGDX
         bSzGp9Eue/iH+rGJZI0d9CT6nP4Qfz77EteXBDa4C/ukbnPZruoSPuZn+CRD8Ahb4kR7
         LMfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ng/LsPBe6zEJs6WaN4vK7Pv1zvVa0PdArTM9SwABWTE=;
        b=EMd9zJbE0UDzykKGIxKTHV/QL9eOG+L343KXuBlr48BqYyjqoGb3c9GS4qa7u5fP8Q
         PiX1Q6S6hCkLB2HrziHiT91R91+fjiOjEv69+GF0dbyTaKuSECAP/3mQ+wb8ONiS6h5Z
         eTnfPfaL9oQT/4ifoAfCFBm+KPv+0PO30bScXC1U9uleRcKLN/LPqzk1Fv2hcEZFfk/q
         AEF9b3vDWTgihcPP2spTEyBjh7QNEx8COd++Y2Y4d9UpOLqw3ERrlBy+TnIXgNLdT3HM
         9QrYclOcDecehJLTvwxLlJBf6dQenfMvnusKgNycFjudlAvRWfOw58LiZDCjHzT5RrBA
         4LAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KscIUqBAhdMKWvXnG6EfOi0DYS9U0yedwC6biujC1kuiEJg8J
	zKM+JpVS0fWeROJYB7L4F1A=
X-Google-Smtp-Source: ABdhPJz1pj1bSMFoLVEeZvbSMj84W6d63rZh/NjauqzFrkU73Ghoahbv9GUrf04r/ZD+Is+P7xgKQw==
X-Received: by 2002:aca:bd8b:: with SMTP id n133mr11016160oif.75.1628795355222;
        Thu, 12 Aug 2021 12:09:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2a05:: with SMTP id y5ls1494670otu.2.gmail; Thu, 12
 Aug 2021 12:09:14 -0700 (PDT)
X-Received: by 2002:a9d:175:: with SMTP id 108mr4816647otu.366.1628795354801;
        Thu, 12 Aug 2021 12:09:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628795354; cv=none;
        d=google.com; s=arc-20160816;
        b=TNw9areOvk8MwfCtT5E6LOPwbiJEP0nMEpOJVYEUKqfiYirYrSXT1bFs6FszuxXcw1
         ofE14lBsD54bG51/LaacKY535ajVxGZpajW8yMLZNWnKaDzknR52NXfis2Pncqb44TXl
         f8NXNeSON2ZMjDQIp1TJXKtElQDszpjjPFxw2A0QA8YGYPempXpb3FHMbpMoW0DTw0Dm
         UD8CkieWY1tjhZuElrslSSAkEkWOb1CRJ3PAO5fgwKhKZl9pNPkiMxyqGIBn3HdTaxVg
         iSho8KX8rwxJs9hYdp8cry3D2Hq0KUZDGeDncIBqVXePMyX9s01J1Ws1VsG+uacc6ykj
         cq6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=NsJ8ENtSz8sI3BKs4lral31a7PEPtXV2Y1LkypjW3H4=;
        b=kk+5KzoNbsM/hrPbPlSCfYXcm/w4F+GnshtgYMOg/IcYxuD41gvRRI/nq7O1AFiUtv
         ScCH9xNltE8ibWsHd4fBS+JpKP+dPEeVvBB+RkMVulsmEWtd8y8EiUXMUhiQDDgqdyjf
         hDg+vwudeJrM1DgUAtN9bWFVbL/m7g5ByE1l3se01Gk9ytyXKGPJjk8RgP/bdRQxcT5H
         edwLNrnDutF5OyyqX7e8fyBf0U6l0QrceUvLrVP5z6H8/1CoUIutcvIBwwQUkDKUbQV8
         hoNS057trvt8FirU5InwpqsvhVSsq9JRq4gdmb515P/vMyl0PSrbQcEKR3L20fNCn7PQ
         NCqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id m17si342447otk.1.2021.08.12.12.09.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 12:09:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="279169955"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; 
   d="gz'50?scan'50,208,50";a="279169955"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2021 12:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; 
   d="gz'50?scan'50,208,50";a="446665233"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 12 Aug 2021 12:08:59 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mEG4Y-000MtJ-QI; Thu, 12 Aug 2021 19:08:58 +0000
Date: Fri, 13 Aug 2021 03:08:06 +0800
From: kernel test robot <lkp@intel.com>
To: Wen Yang <wenyang@linux.alibaba.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Corey Minyard <cminyard@mvista.com>
Subject: [ipmi:for-next 1/2] drivers/char/ipmi/ipmi_si_intf.c:689:5: error:
 expected ')'
Message-ID: <202108130358.1MAF95fR-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/cminyard/linux-ipmi for-next
head:   f68d16759343cdbe44de07b9569b0b992291d13c
commit: 8365203515c64c9f7c11d14cdcccdac58c793598 [1/2] ipmi: rate limit ipmi smi_event failure message
config: hexagon-randconfig-r031-20210811 (attached as .config)
compiler: clang version 12.0.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/cminyard/linux-ipmi/commit/8365203515c64c9f7c11d14cdcccdac58c793598
        git remote add ipmi https://github.com/cminyard/linux-ipmi
        git fetch --no-tags ipmi for-next
        git checkout 8365203515c64c9f7c11d14cdcccdac58c793598
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=hexagon SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/char/ipmi/ipmi_si_intf.c:689:5: error: expected ')'
                                   msg[2]);
                                   ^
   drivers/char/ipmi/ipmi_si_intf.c:686:4: note: to match this '('
                           dev_warn_ratelimited(smi_info->io.dev,
                           ^
   include/linux/dev_printk.h:188:24: note: expanded from macro 'dev_warn_ratelimited'
           dev_level_ratelimited(dev_warn, dev, fmt, ##__VA_ARGS__)
                                 ^
   1 error generated.


vim +689 drivers/char/ipmi/ipmi_si_intf.c

   536	
   537	static void handle_transaction_done(struct smi_info *smi_info)
   538	{
   539		struct ipmi_smi_msg *msg;
   540	
   541		debug_timestamp("Done");
   542		switch (smi_info->si_state) {
   543		case SI_NORMAL:
   544			if (!smi_info->curr_msg)
   545				break;
   546	
   547			smi_info->curr_msg->rsp_size
   548				= smi_info->handlers->get_result(
   549					smi_info->si_sm,
   550					smi_info->curr_msg->rsp,
   551					IPMI_MAX_MSG_LENGTH);
   552	
   553			/*
   554			 * Do this here becase deliver_recv_msg() releases the
   555			 * lock, and a new message can be put in during the
   556			 * time the lock is released.
   557			 */
   558			msg = smi_info->curr_msg;
   559			smi_info->curr_msg = NULL;
   560			deliver_recv_msg(smi_info, msg);
   561			break;
   562	
   563		case SI_GETTING_FLAGS:
   564		{
   565			unsigned char msg[4];
   566			unsigned int  len;
   567	
   568			/* We got the flags from the SMI, now handle them. */
   569			len = smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
   570			if (msg[2] != 0) {
   571				/* Error fetching flags, just give up for now. */
   572				smi_info->si_state = SI_NORMAL;
   573			} else if (len < 4) {
   574				/*
   575				 * Hmm, no flags.  That's technically illegal, but
   576				 * don't use uninitialized data.
   577				 */
   578				smi_info->si_state = SI_NORMAL;
   579			} else {
   580				smi_info->msg_flags = msg[3];
   581				handle_flags(smi_info);
   582			}
   583			break;
   584		}
   585	
   586		case SI_CLEARING_FLAGS:
   587		{
   588			unsigned char msg[3];
   589	
   590			/* We cleared the flags. */
   591			smi_info->handlers->get_result(smi_info->si_sm, msg, 3);
   592			if (msg[2] != 0) {
   593				/* Error clearing flags */
   594				dev_warn_ratelimited(smi_info->io.dev,
   595					 "Error clearing flags: %2.2x\n", msg[2]);
   596			}
   597			smi_info->si_state = SI_NORMAL;
   598			break;
   599		}
   600	
   601		case SI_GETTING_EVENTS:
   602		{
   603			smi_info->curr_msg->rsp_size
   604				= smi_info->handlers->get_result(
   605					smi_info->si_sm,
   606					smi_info->curr_msg->rsp,
   607					IPMI_MAX_MSG_LENGTH);
   608	
   609			/*
   610			 * Do this here becase deliver_recv_msg() releases the
   611			 * lock, and a new message can be put in during the
   612			 * time the lock is released.
   613			 */
   614			msg = smi_info->curr_msg;
   615			smi_info->curr_msg = NULL;
   616			if (msg->rsp[2] != 0) {
   617				/* Error getting event, probably done. */
   618				msg->done(msg);
   619	
   620				/* Take off the event flag. */
   621				smi_info->msg_flags &= ~EVENT_MSG_BUFFER_FULL;
   622				handle_flags(smi_info);
   623			} else {
   624				smi_inc_stat(smi_info, events);
   625	
   626				/*
   627				 * Do this before we deliver the message
   628				 * because delivering the message releases the
   629				 * lock and something else can mess with the
   630				 * state.
   631				 */
   632				handle_flags(smi_info);
   633	
   634				deliver_recv_msg(smi_info, msg);
   635			}
   636			break;
   637		}
   638	
   639		case SI_GETTING_MESSAGES:
   640		{
   641			smi_info->curr_msg->rsp_size
   642				= smi_info->handlers->get_result(
   643					smi_info->si_sm,
   644					smi_info->curr_msg->rsp,
   645					IPMI_MAX_MSG_LENGTH);
   646	
   647			/*
   648			 * Do this here becase deliver_recv_msg() releases the
   649			 * lock, and a new message can be put in during the
   650			 * time the lock is released.
   651			 */
   652			msg = smi_info->curr_msg;
   653			smi_info->curr_msg = NULL;
   654			if (msg->rsp[2] != 0) {
   655				/* Error getting event, probably done. */
   656				msg->done(msg);
   657	
   658				/* Take off the msg flag. */
   659				smi_info->msg_flags &= ~RECEIVE_MSG_AVAIL;
   660				handle_flags(smi_info);
   661			} else {
   662				smi_inc_stat(smi_info, incoming_messages);
   663	
   664				/*
   665				 * Do this before we deliver the message
   666				 * because delivering the message releases the
   667				 * lock and something else can mess with the
   668				 * state.
   669				 */
   670				handle_flags(smi_info);
   671	
   672				deliver_recv_msg(smi_info, msg);
   673			}
   674			break;
   675		}
   676	
   677		case SI_CHECKING_ENABLES:
   678		{
   679			unsigned char msg[4];
   680			u8 enables;
   681			bool irq_on;
   682	
   683			/* We got the flags from the SMI, now handle them. */
   684			smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
   685			if (msg[2] != 0) {
   686				dev_warn_ratelimited(smi_info->io.dev,
   687					"Couldn't get irq info: %x,\n"
   688					"Maybe ok, but ipmi might run very slowly.\n"
 > 689					msg[2]);
   690				smi_info->si_state = SI_NORMAL;
   691				break;
   692			}
   693			enables = current_global_enables(smi_info, 0, &irq_on);
   694			if (smi_info->io.si_type == SI_BT)
   695				/* BT has its own interrupt enable bit. */
   696				check_bt_irq(smi_info, irq_on);
   697			if (enables != (msg[3] & GLOBAL_ENABLES_MASK)) {
   698				/* Enables are not correct, fix them. */
   699				msg[0] = (IPMI_NETFN_APP_REQUEST << 2);
   700				msg[1] = IPMI_SET_BMC_GLOBAL_ENABLES_CMD;
   701				msg[2] = enables | (msg[3] & ~GLOBAL_ENABLES_MASK);
   702				smi_info->handlers->start_transaction(
   703					smi_info->si_sm, msg, 3);
   704				smi_info->si_state = SI_SETTING_ENABLES;
   705			} else if (smi_info->supports_event_msg_buff) {
   706				smi_info->curr_msg = ipmi_alloc_smi_msg();
   707				if (!smi_info->curr_msg) {
   708					smi_info->si_state = SI_NORMAL;
   709					break;
   710				}
   711				start_getting_events(smi_info);
   712			} else {
   713				smi_info->si_state = SI_NORMAL;
   714			}
   715			break;
   716		}
   717	
   718		case SI_SETTING_ENABLES:
   719		{
   720			unsigned char msg[4];
   721	
   722			smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
   723			if (msg[2] != 0)
   724				dev_warn_ratelimited(smi_info->io.dev,
   725					 "Could not set the global enables: 0x%x.\n",
   726					 msg[2]);
   727	
   728			if (smi_info->supports_event_msg_buff) {
   729				smi_info->curr_msg = ipmi_alloc_smi_msg();
   730				if (!smi_info->curr_msg) {
   731					smi_info->si_state = SI_NORMAL;
   732					break;
   733				}
   734				start_getting_events(smi_info);
   735			} else {
   736				smi_info->si_state = SI_NORMAL;
   737			}
   738			break;
   739		}
   740		}
   741	}
   742	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108130358.1MAF95fR-lkp%40intel.com.

--mP3DRpeJDSE+ciuQ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--mP3DRpeJDSE+ciuQ--
