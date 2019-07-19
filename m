Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMVPZDUQKGQE5T6QWJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE516EAFB
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 21:19:15 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id x7sf28588588qtp.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 12:19:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563563954; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gj11q7Ac3vvh0taCNr9pa5IylkV2mwMWD0e7EGu3qiXvV9V19QZsxg1NOwFJm2d5id
         cnbbAw8h4dwjZwXevsvy0tvyc682rf7WncGtYdeC0GCTdx4QHkDgY95f9u/sGlXuwrb+
         7iNhSlly/YYorw+zzXIWYqUiabMtRXyrkldCFdPOPqCHHmHiycQee0vfQwUv1I7oJ/az
         oGnS77O0u3du3HKDym5y3R01NVZ3f0kYux2v2sWAZF1xG4ZuACvSIhuxWF7f1OmCGCcj
         cFaSmOcixiQiufwNt3PRjIfO1L1/rhKG+RtoCChDsEm8nhuxDXllvkpv3AfaPpkpHzJ3
         E8TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+wMGgZ9+PGennXZiVDujgfkzxeMThkh9izt6ivD/9Nc=;
        b=GkO9vceV4cIbpykhiKERODVrY6oATm07dhQQibhDQ2gJmn2ce9qtXj/1xM5zfL9mTs
         W5Jq+yE2zuJGaoKyHgujeqBuT/f2J+ExSixS7cQ81oGH62v1DWJCltBUzF1THPc/N+4H
         mOqj410U4bVSmpz1+hYeC57Hrts02NpKRheLgEdpTxc3zB62CW1y1k6tNOKFdmvuJx1i
         rBQhabC+2Mw0ViFEwmBtzS/lV8yis3rIUiSaVC0i1CTBDfrVw6hzZXYzVsh839sxldkk
         gQH1AAXDYG1+7kQvauqObYDgvFVY4zpuyxbmjINmYjnNka4G4+/e0MqiiI0oCVMUUi78
         dIag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+wMGgZ9+PGennXZiVDujgfkzxeMThkh9izt6ivD/9Nc=;
        b=BSGJWb7TaKfRpOj/uNfBYH4H+P8xmpCb1ukcv4WoGsAn48vVynMpY0xaiskxGcMlft
         zX7hqSshm/caxikebeMskYv99Y3kUgBjIhWcbVaO5rK5W91idxjZjwowJ1b0a6Eb47L9
         RFjDZQNhDyzI+XLJirSwBtCcwRYoZkhygrU+cUtulD6/S8dUZ5Naj7jwXe69Sdp6iaIS
         cx6EXFQ+FZrbG0VkcNwXaXBQv1v7N7hIDpXdkWEdYq6W6sMK502BA6BQcocuBNxgiG0e
         ogCf+feKlkRlknIEbKwSiopUwd/fO5k2Ucdfp3ok7N90GlapfvSNGudZQtwnFiC/Ot3O
         HhLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+wMGgZ9+PGennXZiVDujgfkzxeMThkh9izt6ivD/9Nc=;
        b=ARzQYztCwT4+MN9VBU/UfFHxI/XpZnqd9NFrwvrXKVQgNOTsVioJ/PJWhtbZkbTeGz
         5M/c4U5yK23hyh3jOAOpMkGLL+C6NCGny4nM5llqr3QRkbh8aHLvz0woKrYq+UyQhLJD
         5FB871j5/VRJlEp0YM1Pt+JC3Z/Dgu0j41qf56hCA9dwdQWVb3IayI/NOXI1G3dJZvdz
         UbwSzSGa+KfKHuo47cAAoG27lZHOUJvgPfixrP5x3BCoA4pbVxF8xrOAqbiaIieyENO8
         q99iP/CYMwlC9SK9OiZocndru7ygLbcDGSD7qWTk8XrjmUubNnhuADzojwSvbXqjLmKb
         xF3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXH0yhobO1SAzAc6aguhG9AT7f1uTlLtuw2yP821CMODSxOjc4t
	vJ3TEvp5jFIHYxM2XghjqRc=
X-Google-Smtp-Source: APXvYqxNpsPGyXj/t6a4C0FKjmDJknjC1/ngw9NsI8y6yTyRiQWryA4lu8rHDnE2aczjhRP7dUEgHQ==
X-Received: by 2002:a37:71c7:: with SMTP id m190mr36774170qkc.47.1563563954614;
        Fri, 19 Jul 2019 12:19:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4e4c:: with SMTP id c73ls4529116qkb.3.gmail; Fri, 19 Jul
 2019 12:19:14 -0700 (PDT)
X-Received: by 2002:ae9:f209:: with SMTP id m9mr35459749qkg.251.1563563954268;
        Fri, 19 Jul 2019 12:19:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563563954; cv=none;
        d=google.com; s=arc-20160816;
        b=S3SDy1naYKrMags1LnLb5Z3lG/1FZv1yuHhKBiEn78WtG5h7VaQHhrdN2B7F9jHewb
         T/gClVx75C/d8QtOz1dBatFHOBI2Qcr+D3We56ROpzIswoFT6LMIQgVQoYmVl2R8izvL
         YxKeSs8xUGq3yvpC5sTnSBuIgYYw2oK+HY4s1TDWtfWvkbZirGqRaLYarExeHezzZNoB
         tCAkN096DO5rBiUfe0cY1MQ09vbRrAOmjEBS/kB1N15+hF70YdY1AVKdnkVGFEVA3jap
         jDFBljJVDEZ2XEORvNdXRNjV7qT3aLSXZLSCJmqfUpMKRpVCom7ckbKtlAJljHEStnl8
         pi0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=07kHXVE+iKzTdD+Gf4rLbV6EFl54e24hbVjUG7ltKdM=;
        b=lmnG+6opvlGuvWK48AttaVRUC1A3p+DmpgRC1e9WXRDoRLkSaN8G84UgErfZtqyl74
         Zoi4P7VDenFbbhCHKuyQGbrG431ldYkThpPRJJCMqW45QMBNJj14Kil5QedReY+EKQ8B
         sX7gyucbc3kAkRzQ9nEm0kqtHlD+5ebm5L53NrhaetKd2Lv/CHt4NTUQ/MITYR/tSndV
         Ulv2nWt25N71Z0e0UvFa/G9ZCf4yGmNV1Zmp22TP8Dj2zdvIqg9cTFb9oqPX5VC9ugT0
         ox5Y61zgucPdfuLGF9U6njw/eIH7Rx6Jh9vmY3oxe4wKrt5DoHMqHTRw0jsG25nLAE/a
         3fjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id l17si1420047qkg.0.2019.07.19.12.19.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 12:19:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Jul 2019 12:19:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; 
   d="gz'50?scan'50,208,50";a="252237842"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 19 Jul 2019 12:19:10 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hoYPN-0004lK-OY; Sat, 20 Jul 2019 03:19:09 +0800
Date: Sat, 20 Jul 2019 03:18:49 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next,v2 2/3] net: flow_offload: rename tc_setup_cb_t
 to flow_setup_cb_t
Message-ID: <201907200345.LyPHLwHa%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tpy65scxow4mln7y"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--tpy65scxow4mln7y
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
In-Reply-To: <20190711130923.2483-2-pablo@netfilter.org>
References: <20190711130923.2483-2-pablo@netfilter.org>
TO: Pablo Neira Ayuso <pablo@netfilter.org>
CC: netfilter-devel@vger.kernel.org
CC: davem@davemloft.net, netdev@vger.kernel.org, jiri@resnulli.us, jakub.kicinski@netronome.com

Hi Pablo,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.2 next-20190719]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Pablo-Neira-Ayuso/net-flow_offload-remove-netns-parameter-from-flow_block_cb_alloc/20190713-154531
config: x86_64-rhel-7.2 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 6a6f28f7b72077708df4411acfefd7c0cfccc0fe)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from net/openvswitch/actions.c:29:
   In file included from net/openvswitch/datapath.h:17:
   In file included from net/openvswitch/conntrack.h:9:
>> net/openvswitch/flow.h:197:8: error: redefinition of 'flow_stats'
   struct flow_stats {
          ^
   include/net/flow_offload.h:226:8: note: previous definition is here
   struct flow_stats {
          ^
   1 error generated.
--
   In file included from net/openvswitch/flow.c:38:
   In file included from net/openvswitch/conntrack.h:9:
>> net/openvswitch/flow.h:197:8: error: redefinition of 'flow_stats'
   struct flow_stats {
          ^
   include/net/flow_offload.h:226:8: note: previous definition is here
   struct flow_stats {
          ^
>> net/openvswitch/flow.c:70:21: error: no member named 'lock' in 'struct flow_stats'
                   spin_lock(&stats->lock);
                              ~~~~~  ^
   net/openvswitch/flow.c:76:21: error: no member named 'lock' in 'struct flow_stats'
                   spin_lock(&stats->lock);
                              ~~~~~  ^
>> net/openvswitch/flow.c:100:17: error: no member named 'used' in 'struct flow_stats'
                                           new_stats->used = jiffies;
                                           ~~~~~~~~~  ^
>> net/openvswitch/flow.c:101:17: error: no member named 'packet_count' in 'struct flow_stats'
                                           new_stats->packet_count = 1;
                                           ~~~~~~~~~  ^
>> net/openvswitch/flow.c:102:17: error: no member named 'byte_count' in 'struct flow_stats'
                                           new_stats->byte_count = len;
                                           ~~~~~~~~~  ^
>> net/openvswitch/flow.c:103:17: error: no member named 'tcp_flags' in 'struct flow_stats'
                                           new_stats->tcp_flags = tcp_flags;
                                           ~~~~~~~~~  ^
   net/openvswitch/flow.c:104:33: error: no member named 'lock' in 'struct flow_stats'
                                           spin_lock_init(&new_stats->lock);
                                                           ~~~~~~~~~  ^
   include/linux/spinlock.h:332:17: note: expanded from macro 'spin_lock_init'
           spinlock_check(_lock);                          \
                          ^~~~~
   net/openvswitch/flow.c:104:33: error: no member named 'lock' in 'struct flow_stats'
                                           spin_lock_init(&new_stats->lock);
                                                           ~~~~~~~~~  ^
   include/linux/spinlock.h:333:23: note: expanded from macro 'spin_lock_init'
           raw_spin_lock_init(&(_lock)->rlock);            \
                                ^~~~~
   include/linux/spinlock.h:106:9: note: expanded from macro 'raw_spin_lock_init'
           do { *(lock) = __RAW_SPIN_LOCK_UNLOCKED(lock); } while (0)
                  ^~~~
   net/openvswitch/flow.c:116:9: error: no member named 'used' in 'struct flow_stats'
           stats->used = jiffies;
           ~~~~~  ^
   net/openvswitch/flow.c:117:9: error: no member named 'packet_count' in 'struct flow_stats'
           stats->packet_count++;
           ~~~~~  ^
   net/openvswitch/flow.c:118:9: error: no member named 'byte_count' in 'struct flow_stats'
           stats->byte_count += len;
           ~~~~~  ^
   net/openvswitch/flow.c:119:9: error: no member named 'tcp_flags' in 'struct flow_stats'
           stats->tcp_flags |= tcp_flags;
           ~~~~~  ^
   net/openvswitch/flow.c:121:22: error: no member named 'lock' in 'struct flow_stats'
           spin_unlock(&stats->lock);
                        ~~~~~  ^
   net/openvswitch/flow.c:143:25: error: no member named 'lock' in 'struct flow_stats'
                           spin_lock_bh(&stats->lock);
                                         ~~~~~  ^
   net/openvswitch/flow.c:144:36: error: no member named 'used' in 'struct flow_stats'
                           if (!*used || time_after(stats->used, *used))
                                                    ~~~~~  ^
   include/linux/jiffies.h:106:28: note: expanded from macro 'time_after'
           (typecheck(unsigned long, a) && \
                                     ^
   include/linux/typecheck.h:11:9: note: expanded from macro 'typecheck'
           typeof(x) __dummy2; \
                  ^
   net/openvswitch/flow.c:144:36: error: no member named 'used' in 'struct flow_stats'
                           if (!*used || time_after(stats->used, *used))
                                                    ~~~~~  ^
   include/linux/jiffies.h:108:18: note: expanded from macro 'time_after'
            ((long)((b) - (a)) < 0))
                           ^
   net/openvswitch/flow.c:145:20: error: no member named 'used' in 'struct flow_stats'
                                   *used = stats->used;
                                           ~~~~~  ^
   net/openvswitch/flow.c:146:25: error: no member named 'tcp_flags' in 'struct flow_stats'
                           *tcp_flags |= stats->tcp_flags;
                                         ~~~~~  ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.
--
   In file included from net/openvswitch/flow_table.c:6:
>> net/openvswitch/flow.h:197:8: error: redefinition of 'flow_stats'
   struct flow_stats {
          ^
   include/net/flow_offload.h:226:8: note: previous definition is here
   struct flow_stats {
          ^
>> net/openvswitch/flow_table.c:84:25: error: no member named 'lock' in 'struct flow_stats'
           spin_lock_init(&stats->lock);
                           ~~~~~  ^
   include/linux/spinlock.h:332:17: note: expanded from macro 'spin_lock_init'
           spinlock_check(_lock);                          \
                          ^~~~~
>> net/openvswitch/flow_table.c:84:25: error: no member named 'lock' in 'struct flow_stats'
           spin_lock_init(&stats->lock);
                           ~~~~~  ^
   include/linux/spinlock.h:333:23: note: expanded from macro 'spin_lock_init'
           raw_spin_lock_init(&(_lock)->rlock);            \
                                ^~~~~
   include/linux/spinlock.h:106:9: note: expanded from macro 'raw_spin_lock_init'
           do { *(lock) = __RAW_SPIN_LOCK_UNLOCKED(lock); } while (0)
                  ^~~~
   3 errors generated.

vim +/flow_stats +197 net/openvswitch/flow.h

e64457191a25953 Pravin B Shelar               2013-10-03  196  
e298e505700604c Pravin B Shelar               2013-10-29 @197  struct flow_stats {
e298e505700604c Pravin B Shelar               2013-10-29  198  	u64 packet_count;		/* Number of packets matched. */
e298e505700604c Pravin B Shelar               2013-10-29  199  	u64 byte_count;			/* Number of bytes matched. */
e298e505700604c Pravin B Shelar               2013-10-29  200  	unsigned long used;		/* Last used time (in jiffies). */
e298e505700604c Pravin B Shelar               2013-10-29  201  	spinlock_t lock;		/* Lock for atomic stats update. */
e298e505700604c Pravin B Shelar               2013-10-29  202  	__be16 tcp_flags;		/* Union of seen TCP flags. */
e298e505700604c Pravin B Shelar               2013-10-29  203  };
e298e505700604c Pravin B Shelar               2013-10-29  204  
ccb1352e76cff05 Jesse Gross                   2011-10-25  205  struct sw_flow {
ccb1352e76cff05 Jesse Gross                   2011-10-25  206  	struct rcu_head rcu;
74ed7ab9264c544 Joe Stringer                  2015-01-21  207  	struct {
74ed7ab9264c544 Joe Stringer                  2015-01-21  208  		struct hlist_node node[2];
ccb1352e76cff05 Jesse Gross                   2011-10-25  209  		u32 hash;
74ed7ab9264c544 Joe Stringer                  2015-01-21  210  	} flow_table, ufid_table;
db74a3335e0f645 Thadeu Lima de Souza Cascardo 2016-09-15  211  	int stats_last_writer;		/* CPU id of the last writer on
63e7959c4b9bd6f Jarno Rajahalme               2014-03-27  212  					 * 'stats[0]'.
63e7959c4b9bd6f Jarno Rajahalme               2014-03-27  213  					 */
ccb1352e76cff05 Jesse Gross                   2011-10-25  214  	struct sw_flow_key key;
74ed7ab9264c544 Joe Stringer                  2015-01-21  215  	struct sw_flow_id id;
c4b2bf6b4a35348 Tonghao Zhang                 2017-07-17  216  	struct cpumask cpu_used_mask;
03f0d916aa03175 Andy Zhou                     2013-08-07  217  	struct sw_flow_mask *mask;
ccb1352e76cff05 Jesse Gross                   2011-10-25  218  	struct sw_flow_actions __rcu *sf_acts;
db74a3335e0f645 Thadeu Lima de Souza Cascardo 2016-09-15  219  	struct flow_stats __rcu *stats[]; /* One for each CPU.  First one
63e7959c4b9bd6f Jarno Rajahalme               2014-03-27  220  					   * is allocated at flow creation time,
63e7959c4b9bd6f Jarno Rajahalme               2014-03-27  221  					   * the rest are allocated on demand
63e7959c4b9bd6f Jarno Rajahalme               2014-03-27  222  					   * while holding the 'stats[0].lock'.
63e7959c4b9bd6f Jarno Rajahalme               2014-03-27  223  					   */
ccb1352e76cff05 Jesse Gross                   2011-10-25  224  };
ccb1352e76cff05 Jesse Gross                   2011-10-25  225  
ccb1352e76cff05 Jesse Gross                   2011-10-25  226  struct arp_eth_header {
ccb1352e76cff05 Jesse Gross                   2011-10-25  227  	__be16      ar_hrd;	/* format of hardware address   */
ccb1352e76cff05 Jesse Gross                   2011-10-25  228  	__be16      ar_pro;	/* format of protocol address   */
ccb1352e76cff05 Jesse Gross                   2011-10-25  229  	unsigned char   ar_hln;	/* length of hardware address   */
ccb1352e76cff05 Jesse Gross                   2011-10-25  230  	unsigned char   ar_pln;	/* length of protocol address   */
ccb1352e76cff05 Jesse Gross                   2011-10-25  231  	__be16      ar_op;	/* ARP opcode (command)     */
ccb1352e76cff05 Jesse Gross                   2011-10-25  232  
ccb1352e76cff05 Jesse Gross                   2011-10-25  233  	/* Ethernet+IPv4 specific members. */
ccb1352e76cff05 Jesse Gross                   2011-10-25  234  	unsigned char       ar_sha[ETH_ALEN];	/* sender hardware address  */
ccb1352e76cff05 Jesse Gross                   2011-10-25  235  	unsigned char       ar_sip[4];		/* sender IP address        */
ccb1352e76cff05 Jesse Gross                   2011-10-25  236  	unsigned char       ar_tha[ETH_ALEN];	/* target hardware address  */
ccb1352e76cff05 Jesse Gross                   2011-10-25  237  	unsigned char       ar_tip[4];		/* target IP address        */
ccb1352e76cff05 Jesse Gross                   2011-10-25  238  } __packed;
ccb1352e76cff05 Jesse Gross                   2011-10-25  239  
329f45bc4f191c6 Jiri Benc                     2016-11-10  240  static inline u8 ovs_key_mac_proto(const struct sw_flow_key *key)
329f45bc4f191c6 Jiri Benc                     2016-11-10  241  {
329f45bc4f191c6 Jiri Benc                     2016-11-10  242  	return key->mac_proto & ~SW_FLOW_KEY_INVALID;
329f45bc4f191c6 Jiri Benc                     2016-11-10  243  }
329f45bc4f191c6 Jiri Benc                     2016-11-10  244  
329f45bc4f191c6 Jiri Benc                     2016-11-10  245  static inline u16 __ovs_mac_header_len(u8 mac_proto)
329f45bc4f191c6 Jiri Benc                     2016-11-10  246  {
329f45bc4f191c6 Jiri Benc                     2016-11-10  247  	return mac_proto == MAC_PROTO_ETHERNET ? ETH_HLEN : 0;
329f45bc4f191c6 Jiri Benc                     2016-11-10  248  }
329f45bc4f191c6 Jiri Benc                     2016-11-10  249  
329f45bc4f191c6 Jiri Benc                     2016-11-10  250  static inline u16 ovs_mac_header_len(const struct sw_flow_key *key)
329f45bc4f191c6 Jiri Benc                     2016-11-10  251  {
329f45bc4f191c6 Jiri Benc                     2016-11-10  252  	return __ovs_mac_header_len(ovs_key_mac_proto(key));
329f45bc4f191c6 Jiri Benc                     2016-11-10  253  }
329f45bc4f191c6 Jiri Benc                     2016-11-10  254  
74ed7ab9264c544 Joe Stringer                  2015-01-21  255  static inline bool ovs_identifier_is_ufid(const struct sw_flow_id *sfid)
74ed7ab9264c544 Joe Stringer                  2015-01-21  256  {
74ed7ab9264c544 Joe Stringer                  2015-01-21  257  	return sfid->ufid_len;
74ed7ab9264c544 Joe Stringer                  2015-01-21  258  }
74ed7ab9264c544 Joe Stringer                  2015-01-21  259  
74ed7ab9264c544 Joe Stringer                  2015-01-21  260  static inline bool ovs_identifier_is_key(const struct sw_flow_id *sfid)
74ed7ab9264c544 Joe Stringer                  2015-01-21  261  {
74ed7ab9264c544 Joe Stringer                  2015-01-21  262  	return !ovs_identifier_is_ufid(sfid);
74ed7ab9264c544 Joe Stringer                  2015-01-21  263  }
74ed7ab9264c544 Joe Stringer                  2015-01-21  264  
ad55200734c65a3 Ben Pfaff                     2014-05-06  265  void ovs_flow_stats_update(struct sw_flow *, __be16 tcp_flags,
12eb18f7115884b Thomas Graf                   2014-11-06  266  			   const struct sk_buff *);
86ec8dbae27e5fa Jarno Rajahalme               2014-05-05  267  void ovs_flow_stats_get(const struct sw_flow *, struct ovs_flow_stats *,
e298e505700604c Pravin B Shelar               2013-10-29  268  			unsigned long *used, __be16 *tcp_flags);
86ec8dbae27e5fa Jarno Rajahalme               2014-05-05  269  void ovs_flow_stats_clear(struct sw_flow *);
ccb1352e76cff05 Jesse Gross                   2011-10-25  270  u64 ovs_flow_used_time(unsigned long flow_jiffies);
ccb1352e76cff05 Jesse Gross                   2011-10-25  271  
971427f353f3c42 Andy Zhou                     2014-09-15  272  int ovs_flow_key_update(struct sk_buff *skb, struct sw_flow_key *key);
1d8fff907342d23 Thomas Graf                   2015-07-21  273  int ovs_flow_key_extract(const struct ip_tunnel_info *tun_info,
12eb18f7115884b Thomas Graf                   2014-11-06  274  			 struct sk_buff *skb,
f0b128c1e2cc33a Jesse Gross                   2014-10-03  275  			 struct sw_flow_key *key);
83c8df26a3b6548 Pravin B Shelar               2014-09-15  276  /* Extract key from packet coming from userspace. */
c2ac667358708d7 Joe Stringer                  2015-08-26  277  int ovs_flow_key_extract_userspace(struct net *net, const struct nlattr *attr,
83c8df26a3b6548 Pravin B Shelar               2014-09-15  278  				   struct sk_buff *skb,
05da5898a96c05e Jarno Rajahalme               2014-11-06  279  				   struct sw_flow_key *key, bool log);
03f0d916aa03175 Andy Zhou                     2013-08-07  280  
ccb1352e76cff05 Jesse Gross                   2011-10-25  281  #endif /* flow.h */

:::::: The code at line 197 was first introduced by commit
:::::: e298e505700604c97e6a9edb21cebb080bdb91f6 openvswitch: Per cpu flow stats.

:::::: TO: Pravin B Shelar <pshelar@nicira.com>
:::::: CC: Jesse Gross <jesse@nicira.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907200345.LyPHLwHa%25lkp%40intel.com.

--tpy65scxow4mln7y
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ruz/H+Q0o3xPtwIA

--tpy65scxow4mln7y--
