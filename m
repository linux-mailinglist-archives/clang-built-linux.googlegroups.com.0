Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB45BXL6AKGQER76EPFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF092935B2
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 09:25:41 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id e7sf275719vsc.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 00:25:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603178740; cv=pass;
        d=google.com; s=arc-20160816;
        b=ne+WFdkXNEP7l/HlVR/JhIeiKGej6JCgFKwFCL0mhC29KU6bsRWXhtFsXZmUtDtZc4
         +1ZyAEvf5LrpKXOXwJErzv3o8EgJdQcQHYXXmNo68icaojfLXHhLsMrMEXYc97fc6wYc
         8SuaCFb1E2h0+Ykh/jB1GQTTg+9YQ6IQh8T/tsSDmr67MqRX5YKmdnfoCqyBDAvSpN4A
         JuZHcREh8duwfW8r+S0YdhvyIrHNJoPRfNrWxGOYydL93g8Yo52PEAuV71l57u1ITQt3
         M4B5CWwcoNY4c5JDNdyVi/JQb6sBncL+1BNxaAeTckU46O333jJNlFmFSodpoTNcA7Dx
         Ai9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=0QW6GkkM4SnejC8z+IEEyvosDFHYB/spThdvTqnRS5g=;
        b=DrS5cEPt2sgo3fNx23KR3wgWonOV/UU7APtJNU7x36CGOc3JtYMxQbx84itpDP9jGZ
         27nAaSFsB8v9eg53et4cafw0//kf3Ah1ZQplVy2ZemF7LR/MSWojl+OMgLQe4fCS7Ef6
         vS4e2wKfgX+abXfKdOVn/D9u1PY2SUtv4a08zDeVQ99Y39vxMJRkXbCJjpoxmigqt7VJ
         dKU0BONf2+zZM24defJ1L3rNPvu3CpUDlKEDzBgPTgyubikjj8TtEweVsbQToYBKKplP
         yt6JGDtLpmfdLhmPOeQGgifHc2cjAHkwhI7g5irpJZQZKjsOzL3OIINi8CyrECFLc7rV
         bP3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0QW6GkkM4SnejC8z+IEEyvosDFHYB/spThdvTqnRS5g=;
        b=acW7mQENWMmkJYwXZGAPBkCJs5yTyG1Lx+6c+226hKNyJlV0VBKmNdSsVY/i1tFHG7
         UgIanUaPKWF3Kx8S1LdzUG7QIrWSrP4GnO9BEVAnYVG9Bu2GSjHHe6ykk51yxVoGVpMD
         9uav7JxTBRrMDOPsaNyMqx3GGQ1YHHL2xBVgS0IQhdUDyJzoM9SxG7GJdF6xLCU2jXwn
         s78qQUFXH/ThfEEwc2+PUgX67+tATGTfhylo/PtzmONb7Md0cQv6VfTaRckZ+TGpq/RY
         iAA3RSczeKeqYps88FCcY8QpJwSe+0/+yJP2GQgeefqq+/TX71tUicD7AskX3dJd40Zq
         0LlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0QW6GkkM4SnejC8z+IEEyvosDFHYB/spThdvTqnRS5g=;
        b=YIhw1ppcEaN3l2aQoimzv/cCUJJOBteFCEU95ciHTtc4bUeblbKQzpOsuurRtjqE0r
         tRTen8HSVkP8yBEcHmFeRC+oy/SiiJNJcFTbylUmBlse128ZOOste/LQbEtL9z5ND7WW
         FZ3B2fdvNrG5lnG5K5hB+aVQpgrnnprnDR6MkoFy7uOBSwhsba1rb6VIg5lqG8cN/TSy
         sfzi8McliGF3T8aAnJwo20VXPkDUpPHiXWGrxAoNuJaZSewo2iUXML+MELp0WOdonq8h
         EQDciatUVgrlzo3v3ig8QRxswxD2lhUdEyRm2Yw2Bc90V98zBKXBdhsMENQ6SYvbDEOt
         j9Gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531q1RyPf4clgw3hosZ2EyDSOHbVgxK0zM2Nv9w+Q0jxciYvmNLP
	YaIZt6nLRcj774pemJCtFS4=
X-Google-Smtp-Source: ABdhPJxvA/CaSOvD0iS9acwTQ74OnefXMinP5csMG07ShUMAXIQf4zzzRbO3/2kQd1zptbKLCsKyBg==
X-Received: by 2002:a67:f453:: with SMTP id r19mr685482vsn.43.1603178739904;
        Tue, 20 Oct 2020 00:25:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:23c7:: with SMTP id 65ls52423uao.7.gmail; Tue, 20 Oct
 2020 00:25:39 -0700 (PDT)
X-Received: by 2002:ab0:61d6:: with SMTP id m22mr626642uan.91.1603178739298;
        Tue, 20 Oct 2020 00:25:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603178739; cv=none;
        d=google.com; s=arc-20160816;
        b=WD9gUHht9w1Zi360BXkwXXofumf6gzGZhHeC4MMbqbssars/e/iL+gu12yEjrlTaVg
         EJIUtxEnT1Eiz1Ohl7EGatS1zN5lBfZXi54PgHuDE2QzdIi4fysCdDOeBfilJcVtmi/e
         fcwO8ZkUYDQrN4gIExRrnsoyWizq298pGrJTuJM5Z6B2T8OL7xa8TwQTOQWYFlwqazbJ
         obag9hiuqDIQw/XBk4r9gH0O10knsQD7HevB3T1U38hl1aEGkadkdV6bFjNckJRcEFLk
         gUhCNhjNfgyanqKwH0VRlatnZZi2su7/Y3m5YP7dchST56RTucMz+mhjdsmQXIxIUZNj
         V5TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=cTVO786CmfNK8MQZvlytnOYQam1sWmSqnZKNsI+BNqA=;
        b=zMTGSdYFZR/V+vGfm9E7XOtVrYvk6lNg8SljWMPtUZv2KOgmyqR9PB5eORwkyy32G2
         BuPIjI4j89XAsldD1r0gI/MJXhV9b5hX3Jno/FFUU8i7tonw9vOkQ43YpalWR+ekZuTW
         hbP0PaDym+nCrALzcd+lHTvSKVKYqNY2l2WLgCSx3p5Do1w92/AK3U9s1otSEI8NSGW1
         F1DzvsAO53Nv5ovgmcZ6AcZ55YM9MEWx8NkOUQnG5PUwLGy/PJ2/o6dLEWai5m6oVn3V
         T7c5NqKH4YDh4rcFlqSKKkpQiJuFg6E9IxmXI+roPBOShMCCNoIVUCjWM0ZnO3mBrYKU
         BixA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id b16si80795vkn.5.2020.10.20.00.25.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 00:25:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: qnZdNIjA9O6p9+xF6xbDH3K5fwlikIMibVMmla+SQZt0Zi7KTn0hmTKTlMG+kkXP7TPIqsrHEY
 S83wPlB358CA==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="147024789"
X-IronPort-AV: E=Sophos;i="5.77,396,1596524400"; 
   d="gz'50?scan'50,208,50";a="147024789"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2020 00:25:37 -0700
IronPort-SDR: olqsDevd85ba+zoLDlq/qFsGZpGiyJPpG4cPy2+fQXjH7GQWM2RLRxIH3rbeFuCdj6CPhimd60
 3HZseNmjYdvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,396,1596524400"; 
   d="gz'50?scan'50,208,50";a="348160005"
Received: from lkp-server01.sh.intel.com (HELO 88424da292e0) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 20 Oct 2020 00:25:35 -0700
Received: from kbuild by 88424da292e0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kUm1W-0000Rx-LT; Tue, 20 Oct 2020 07:25:34 +0000
Date: Tue, 20 Oct 2020 15:25:01 +0800
From: kernel test robot <lkp@intel.com>
To: Xiaoliang Yang <xiaoliang.yang_1@nxp.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC, net-next 1/3] net: dsa: ethtool preempt ops support on
 slave ports
Message-ID: <202010201542.JHTjzuhd-lkp@intel.com>
References: <20201020040458.39794-2-xiaoliang.yang_1@nxp.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline
In-Reply-To: <20201020040458.39794-2-xiaoliang.yang_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Xiaoliang,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on net-next/master]

url:    https://github.com/0day-ci/linux/commits/Xiaoliang-Yang/net-dsa-felix-frame-preemption-support/20201020-121555
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 105faa8742437c28815b2a3eb8314ebc5fd9288c
config: x86_64-randconfig-a001-20201020 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ea693a162786d933863ab079648d4261ac0ead47)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/8793bdc51bda4de1362ea8e74db38e1a93ff6964
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Xiaoliang-Yang/net-dsa-felix-frame-preemption-support/20201020-121555
        git checkout 8793bdc51bda4de1362ea8e74db38e1a93ff6964
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from net/core/flow_dissector.c:8:
>> include/net/dsa.h:506:18: warning: declaration of 'struct ethtool_fp' will not be visible outside of this function [-Wvisibility]
                                  struct ethtool_fp *fpcmd);
                                         ^
   include/net/dsa.h:512:18: warning: declaration of 'struct ethtool_fp' will not be visible outside of this function [-Wvisibility]
                                  struct ethtool_fp *fpcmd);
                                         ^
   2 warnings generated.
--
   In file included from net/core/dev.c:101:
>> include/net/dsa.h:506:18: warning: declaration of 'struct ethtool_fp' will not be visible outside of this function [-Wvisibility]
                                  struct ethtool_fp *fpcmd);
                                         ^
   include/net/dsa.h:512:18: warning: declaration of 'struct ethtool_fp' will not be visible outside of this function [-Wvisibility]
                                  struct ethtool_fp *fpcmd);
                                         ^
   net/core/dev.c:4932:1: warning: unused function 'sch_handle_ingress' [-Wunused-function]
   sch_handle_ingress(struct sk_buff *skb, struct packet_type **pt_prev, int *ret,
   ^
   net/core/dev.c:5080:19: warning: unused function 'nf_ingress' [-Wunused-function]
   static inline int nf_ingress(struct sk_buff *skb, struct packet_type **pt_prev,
                     ^
   4 warnings generated.

vim +506 include/net/dsa.h

   427	
   428	typedef int dsa_fdb_dump_cb_t(const unsigned char *addr, u16 vid,
   429				      bool is_static, void *data);
   430	struct dsa_switch_ops {
   431		enum dsa_tag_protocol (*get_tag_protocol)(struct dsa_switch *ds,
   432							  int port,
   433							  enum dsa_tag_protocol mprot);
   434	
   435		int	(*setup)(struct dsa_switch *ds);
   436		void	(*teardown)(struct dsa_switch *ds);
   437		u32	(*get_phy_flags)(struct dsa_switch *ds, int port);
   438	
   439		/*
   440		 * Access to the switch's PHY registers.
   441		 */
   442		int	(*phy_read)(struct dsa_switch *ds, int port, int regnum);
   443		int	(*phy_write)(struct dsa_switch *ds, int port,
   444				     int regnum, u16 val);
   445	
   446		/*
   447		 * Link state adjustment (called from libphy)
   448		 */
   449		void	(*adjust_link)(struct dsa_switch *ds, int port,
   450					struct phy_device *phydev);
   451		void	(*fixed_link_update)(struct dsa_switch *ds, int port,
   452					struct fixed_phy_status *st);
   453	
   454		/*
   455		 * PHYLINK integration
   456		 */
   457		void	(*phylink_validate)(struct dsa_switch *ds, int port,
   458					    unsigned long *supported,
   459					    struct phylink_link_state *state);
   460		int	(*phylink_mac_link_state)(struct dsa_switch *ds, int port,
   461						  struct phylink_link_state *state);
   462		void	(*phylink_mac_config)(struct dsa_switch *ds, int port,
   463					      unsigned int mode,
   464					      const struct phylink_link_state *state);
   465		void	(*phylink_mac_an_restart)(struct dsa_switch *ds, int port);
   466		void	(*phylink_mac_link_down)(struct dsa_switch *ds, int port,
   467						 unsigned int mode,
   468						 phy_interface_t interface);
   469		void	(*phylink_mac_link_up)(struct dsa_switch *ds, int port,
   470					       unsigned int mode,
   471					       phy_interface_t interface,
   472					       struct phy_device *phydev,
   473					       int speed, int duplex,
   474					       bool tx_pause, bool rx_pause);
   475		void	(*phylink_fixed_state)(struct dsa_switch *ds, int port,
   476					       struct phylink_link_state *state);
   477		/*
   478		 * ethtool hardware statistics.
   479		 */
   480		void	(*get_strings)(struct dsa_switch *ds, int port,
   481				       u32 stringset, uint8_t *data);
   482		void	(*get_ethtool_stats)(struct dsa_switch *ds,
   483					     int port, uint64_t *data);
   484		int	(*get_sset_count)(struct dsa_switch *ds, int port, int sset);
   485		void	(*get_ethtool_phy_stats)(struct dsa_switch *ds,
   486						 int port, uint64_t *data);
   487	
   488		/*
   489		 * ethtool Wake-on-LAN
   490		 */
   491		void	(*get_wol)(struct dsa_switch *ds, int port,
   492				   struct ethtool_wolinfo *w);
   493		int	(*set_wol)(struct dsa_switch *ds, int port,
   494				   struct ethtool_wolinfo *w);
   495	
   496		/*
   497		 * ethtool timestamp info
   498		 */
   499		int	(*get_ts_info)(struct dsa_switch *ds, int port,
   500				       struct ethtool_ts_info *ts);
   501	
   502		/*
   503		 * ethtool --set-frame-preemption
   504		 */
   505		int	(*set_preempt)(struct dsa_switch *ds, int port,
 > 506				       struct ethtool_fp *fpcmd);
   507	
   508		/*
   509		 * ethtool --show-frame-preemption
   510		 */
   511		int	(*get_preempt)(struct dsa_switch *ds, int port,
   512				       struct ethtool_fp *fpcmd);
   513	
   514		/*
   515		 * Suspend and resume
   516		 */
   517		int	(*suspend)(struct dsa_switch *ds);
   518		int	(*resume)(struct dsa_switch *ds);
   519	
   520		/*
   521		 * Port enable/disable
   522		 */
   523		int	(*port_enable)(struct dsa_switch *ds, int port,
   524				       struct phy_device *phy);
   525		void	(*port_disable)(struct dsa_switch *ds, int port);
   526	
   527		/*
   528		 * Port's MAC EEE settings
   529		 */
   530		int	(*set_mac_eee)(struct dsa_switch *ds, int port,
   531				       struct ethtool_eee *e);
   532		int	(*get_mac_eee)(struct dsa_switch *ds, int port,
   533				       struct ethtool_eee *e);
   534	
   535		/* EEPROM access */
   536		int	(*get_eeprom_len)(struct dsa_switch *ds);
   537		int	(*get_eeprom)(struct dsa_switch *ds,
   538				      struct ethtool_eeprom *eeprom, u8 *data);
   539		int	(*set_eeprom)(struct dsa_switch *ds,
   540				      struct ethtool_eeprom *eeprom, u8 *data);
   541	
   542		/*
   543		 * Register access.
   544		 */
   545		int	(*get_regs_len)(struct dsa_switch *ds, int port);
   546		void	(*get_regs)(struct dsa_switch *ds, int port,
   547				    struct ethtool_regs *regs, void *p);
   548	
   549		/*
   550		 * Bridge integration
   551		 */
   552		int	(*set_ageing_time)(struct dsa_switch *ds, unsigned int msecs);
   553		int	(*port_bridge_join)(struct dsa_switch *ds, int port,
   554					    struct net_device *bridge);
   555		void	(*port_bridge_leave)(struct dsa_switch *ds, int port,
   556					     struct net_device *bridge);
   557		void	(*port_stp_state_set)(struct dsa_switch *ds, int port,
   558					      u8 state);
   559		void	(*port_fast_age)(struct dsa_switch *ds, int port);
   560		int	(*port_egress_floods)(struct dsa_switch *ds, int port,
   561					      bool unicast, bool multicast);
   562	
   563		/*
   564		 * VLAN support
   565		 */
   566		int	(*port_vlan_filtering)(struct dsa_switch *ds, int port,
   567					       bool vlan_filtering,
   568					       struct switchdev_trans *trans);
   569		int (*port_vlan_prepare)(struct dsa_switch *ds, int port,
   570					 const struct switchdev_obj_port_vlan *vlan);
   571		void (*port_vlan_add)(struct dsa_switch *ds, int port,
   572				      const struct switchdev_obj_port_vlan *vlan);
   573		int	(*port_vlan_del)(struct dsa_switch *ds, int port,
   574					 const struct switchdev_obj_port_vlan *vlan);
   575		/*
   576		 * Forwarding database
   577		 */
   578		int	(*port_fdb_add)(struct dsa_switch *ds, int port,
   579					const unsigned char *addr, u16 vid);
   580		int	(*port_fdb_del)(struct dsa_switch *ds, int port,
   581					const unsigned char *addr, u16 vid);
   582		int	(*port_fdb_dump)(struct dsa_switch *ds, int port,
   583					 dsa_fdb_dump_cb_t *cb, void *data);
   584	
   585		/*
   586		 * Multicast database
   587		 */
   588		int (*port_mdb_prepare)(struct dsa_switch *ds, int port,
   589					const struct switchdev_obj_port_mdb *mdb);
   590		void (*port_mdb_add)(struct dsa_switch *ds, int port,
   591				     const struct switchdev_obj_port_mdb *mdb);
   592		int	(*port_mdb_del)(struct dsa_switch *ds, int port,
   593					const struct switchdev_obj_port_mdb *mdb);
   594		/*
   595		 * RXNFC
   596		 */
   597		int	(*get_rxnfc)(struct dsa_switch *ds, int port,
   598				     struct ethtool_rxnfc *nfc, u32 *rule_locs);
   599		int	(*set_rxnfc)(struct dsa_switch *ds, int port,
   600				     struct ethtool_rxnfc *nfc);
   601	
   602		/*
   603		 * TC integration
   604		 */
   605		int	(*cls_flower_add)(struct dsa_switch *ds, int port,
   606					  struct flow_cls_offload *cls, bool ingress);
   607		int	(*cls_flower_del)(struct dsa_switch *ds, int port,
   608					  struct flow_cls_offload *cls, bool ingress);
   609		int	(*cls_flower_stats)(struct dsa_switch *ds, int port,
   610					    struct flow_cls_offload *cls, bool ingress);
   611		int	(*port_mirror_add)(struct dsa_switch *ds, int port,
   612					   struct dsa_mall_mirror_tc_entry *mirror,
   613					   bool ingress);
   614		void	(*port_mirror_del)(struct dsa_switch *ds, int port,
   615					   struct dsa_mall_mirror_tc_entry *mirror);
   616		int	(*port_policer_add)(struct dsa_switch *ds, int port,
   617					    struct dsa_mall_policer_tc_entry *policer);
   618		void	(*port_policer_del)(struct dsa_switch *ds, int port);
   619		int	(*port_setup_tc)(struct dsa_switch *ds, int port,
   620					 enum tc_setup_type type, void *type_data);
   621	
   622		/*
   623		 * Cross-chip operations
   624		 */
   625		int	(*crosschip_bridge_join)(struct dsa_switch *ds, int tree_index,
   626						 int sw_index, int port,
   627						 struct net_device *br);
   628		void	(*crosschip_bridge_leave)(struct dsa_switch *ds, int tree_index,
   629						  int sw_index, int port,
   630						  struct net_device *br);
   631	
   632		/*
   633		 * PTP functionality
   634		 */
   635		int	(*port_hwtstamp_get)(struct dsa_switch *ds, int port,
   636					     struct ifreq *ifr);
   637		int	(*port_hwtstamp_set)(struct dsa_switch *ds, int port,
   638					     struct ifreq *ifr);
   639		bool	(*port_txtstamp)(struct dsa_switch *ds, int port,
   640					 struct sk_buff *clone, unsigned int type);
   641		bool	(*port_rxtstamp)(struct dsa_switch *ds, int port,
   642					 struct sk_buff *skb, unsigned int type);
   643	
   644		/* Devlink parameters, etc */
   645		int	(*devlink_param_get)(struct dsa_switch *ds, u32 id,
   646					     struct devlink_param_gset_ctx *ctx);
   647		int	(*devlink_param_set)(struct dsa_switch *ds, u32 id,
   648					     struct devlink_param_gset_ctx *ctx);
   649		int	(*devlink_info_get)(struct dsa_switch *ds,
   650					    struct devlink_info_req *req,
   651					    struct netlink_ext_ack *extack);
   652	
   653		/*
   654		 * MTU change functionality. Switches can also adjust their MRU through
   655		 * this method. By MTU, one understands the SDU (L2 payload) length.
   656		 * If the switch needs to account for the DSA tag on the CPU port, this
   657		 * method needs to do so privately.
   658		 */
   659		int	(*port_change_mtu)(struct dsa_switch *ds, int port,
   660					   int new_mtu);
   661		int	(*port_max_mtu)(struct dsa_switch *ds, int port);
   662	};
   663	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010201542.JHTjzuhd-lkp%40intel.com.

--SLDf9lqlvOQaIe6s
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICLmFjl8AAy5jb25maWcAlDxLd9s2s/v+Cp100y6a2o7rpvceL0ASlBARBAOQenjDo9pK
6ls/8slym/z7OwMQJACCar8sHAkzeM57MND3330/I6/H58fd8f529/DwbfZ5/7Q/7I77u9mn
+4f9/84yMStFPaMZq98CcnH/9Pr156/vr9qry9kvb397e/bT4fb9bLk/PO0fZunz06f7z6/Q
//756bvvv0tFmbN5m6btikrFRNnWdFNfv7l92D19nv21P7wA3uz84u3Z27PZD5/vj//z88/w
9/H+cHg+/Pzw8Ndj++Xw/H/72+Nsv7v67d3u/Ori1/dXd7+9e/f+6t3u97Nff7u6fH93eXF1
vrs92+/uLn/98Y2ddT5Me31mG4ts3AZ4TLVpQcr59TcHERqLIhuaNEbf/fziDP45Y6SkbAtW
Lp0OQ2OralKz1IMtiGqJ4u1c1GIS0Iqmrpo6CmclDE0dkChVLZu0FlINrUx+bNdCOutKGlZk
NeO0rUlS0FYJ6UxQLyQlsPsyF/AHUBR2BWp+P5tr5niYveyPr18G+iZSLGnZAnkVr5yJS1a3
tFy1RMJ5Ms7q63cXMEq/Wl4xmL2mqp7dv8yeno84cE8AkZLCHvabN7HmljTuyelttYoUtYO/
ICvaLqksadHOb5izPBeSAOQiDipuOIlDNjdTPcQU4DIOuFE18ll/NM56IycTrDnshQt2e4Xw
zc0pKCz+NPjyFBg3EllxRnPSFLXmCIc2tnkhVF0STq/f/PD0/LQHEe7HVWsSOwK1VStWOeLU
NeD/aV0M7ZVQbNPyjw1taLx11GVN6nTR2h4Du0qhVMspF3Lbkrom6SKysEbRgiXDYKQBxRkQ
nUgYXwNwalIUAfrQqoUO5Hf28vr7y7eX4/5xELo5LalkqRbvSorE2Z4LUguxjkNY+YGmNUqX
szyZAUjBsbeSKlpm8a7pwhUkbMkEJ6z02xTjMaR2wajEM9jGB+eklkAdOAEQdVBlcSxcnlwR
XH/LRUb9mXIhU5p1qoy5el1VRCqKSC5x3ZEzmjTzXPlsvn+6mz1/CmgxGAaRLpVoYE7DPZlw
ZtTkdlG0FHyLdV6RgmWkpm1BVN2m27SIUFUr7tWIdSxYj0dXtKzVSSBqbZKlMNFpNA4UI9mH
JorHhWqbCpcc8LiRsLRq9HKl0mYkMEMncTTr1/eP4CPEuB9s6RIMDgX2dtZVinZxg4aFa67u
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

--SLDf9lqlvOQaIe6s--
