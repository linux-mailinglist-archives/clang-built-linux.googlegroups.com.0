Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4EIVT3QKGQEH63IYPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4C11FEB3D
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 08:06:42 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id u48sf3561111qth.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 23:06:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592460402; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZX0CuTKnqpOibVcZLNWfAV+mowAfni+0e1hHZQJylwZlQmqUuRv2hrRV7OfL51tAz
         4lygdtVe0tEB9k/w0yb/aDKl9vorMRJNQasL9cvoaO42PyQqX7fsMzIb7N9IIPnDyHYw
         DBK91RNAv3O7kR+eDIKRKS4UsyrN1qA+9WRlRaCjyJB8uRW1hysHsE/k/QsA1ZBXqtky
         SVRTf4KOHYWo6o3xUBGxZAJ5k8kZkg7cxl+droaaTKXUTmzTohWJP8Ru5bJAvEwVATZD
         Nnki0W7cmQu3QbodTOetqeBaxTdHrZ66t2suyz9aWPy5VTMUeTz3QvPTzxPv65bcm/no
         4leA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=sayT87slXaN2lZAVQF3xV6R+FMOrzXvMPL+da299mt8=;
        b=sZucQz52D98E/GClQiR2nM5g5GxjZ07q0jbM5pdeeDRmFbtqvsqTTIxDRTfgRDggfQ
         2Bm/Q33RO/aWiYwmzJLCGS4x8gCiqkUx4ex8NrfljV9cmRUDznw922o1EXcqbTMf0QRG
         Wc09rEkvODlJZXwvrFJDz/LakMuTKzp5sT/DKk8TDzTKz1NGy3jczQGd+q0y8L7PSsy8
         V3U846LfuzPltPV590FzHNjYbpEezvNO1xa7x9GGwMmaXs13P8M9vIbq2PG3wFplrZw6
         Oxw2mOOy8349ETus5ZCMP8JO4zThDrWJkOUNuWKIqcE0lLdczvOI5qnGc7QHoAExe3aV
         OUVg==
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
        bh=sayT87slXaN2lZAVQF3xV6R+FMOrzXvMPL+da299mt8=;
        b=CkBL18BeYLC/aDtXxter4nACDmCMUqm/6ok8+qBe8GO3T/doDXZ6eUMN7ZOMfhLq3/
         k5DNAVoS1WG+Kq7PSzIf9wu68cRIAvMjhEghwtNm1l8WPP5C9Nsm/PWCLAreFip9bZjp
         9S3doEHbOuHYSeXcrMtdUivi1scdnzGpF79IpTWrXJ+WrIVor9yA4wGJQnK/nF9w3HfQ
         0LzDg2LtRwba02PZnHaUK11dEjeAdLAqKXNytWoOXAvRB7yqWsn7mNZnlq/6hHB1L6lo
         keUj32rQJdeH1B6y6dq0iiblm5nTuBIE3bSqHgKhYUQdEqYwTPPBHPDoa4Li6bwl1Gt3
         vPKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sayT87slXaN2lZAVQF3xV6R+FMOrzXvMPL+da299mt8=;
        b=QZuvLsx0VqohfRbMQsW45/rDIKAx9iQuMDqAd8DHmxuhozpRoSdPKnHWTqsMuu8tSA
         3vsCAn6sMaDcKIGU2T5ptlvxqKFbLSF/7uBcPXvGjftYnf9l4uAA54nWsHXob2bG1ZVr
         63/k8SiyLajWL+3UDmIs5lay4uvxzYv0XWl+Mjp/KvlF/G7xU/hGhVg57TZhgVY+Lvhi
         X8ieyrf+NcRh9MRI7CDEKAdzfdwEzNLA2ty4MsyHOsCBaTp/mdeyNsm5qJsmPw9dTcwN
         5spe9lCn8JYy8QmM3ifpgdJ3Ww2dLDtJuh0WEgFKiQzo74qh11A7juHH6c5Gqh+zlpDa
         D2cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MB7oWg8PrB4ZgG3DJb129iOEvBBv8aPazXAs2R67dT32ZeI0U
	BiskwV3M0z5rDpavrd41G3s=
X-Google-Smtp-Source: ABdhPJywWjbc6h0X7euFWndgRjsI3wmlekO2rfh20u+4/kAxSIguWmruM0EIvdSxKVABwvVBFJGgyA==
X-Received: by 2002:ac8:468a:: with SMTP id g10mr2851042qto.6.1592460400882;
        Wed, 17 Jun 2020 23:06:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:55c7:: with SMTP id bt7ls1048796qvb.3.gmail; Wed, 17 Jun
 2020 23:06:40 -0700 (PDT)
X-Received: by 2002:ad4:5492:: with SMTP id q18mr2205181qvy.166.1592460400483;
        Wed, 17 Jun 2020 23:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592460400; cv=none;
        d=google.com; s=arc-20160816;
        b=Fiow/C6sw+WY4+qsjFbNmyZI3pBjQOE2bhE2Yq44L/Hje+Yw4bGYWfhbQsBmJle3Za
         kbrkjzuF4tbo6MjQxFU/sXPfEeCc7kgBSvC5TQ0OLhCK8idoNASBy5LwYgNtvdQ5+b54
         kCErVwgugrBySd0QLL0GMTgYOOrcdPKCO/zMXDEQKmJgCp/20FnzZRr95HktMmlp/MyG
         G7yaK2VMEqAjrolLijyEQZbq6rKfX63AH7Iec80y+Tffq3ikbm2Hxb7N46OpqE7K7qTr
         8qeb3d3TPoLSHb3pyH8MXjIy0x3Jy8/M3bCZvO82ugkjk+DpCSNSCm/4sanuSjgX1TPS
         aUZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=c87tD2HDKU4bj8uDzVLWNBd0F0euHaHcDqRLlohg18k=;
        b=xkONCcBD1vZsDIOBo4QjSF9fJc/2DbGSs46iqUC5mrFs8wm8kyIVoKjEoyanlBp/KW
         V6DWe7iRIaWpT7r9rC5d2gu2WgZpcuRYFf/sH+WvhRzdQHIpgstOLgq6P3irvDz5tQYN
         U6okCVfyfTPHxYTyn60GGJSB1ANYHNf5/GxoX+IuK1i8aB0lwj9+LO3zipJOApaErzfx
         +8rmQJgqYDZUTOb9OOQbp2GPx4ttzamcKfaFTYraxnjG00Lkl+Sj+VJw2u5irxKmm3xW
         BXho+7lA7+fAw/9BhoeR4XgbkyqrV7R5qRvRWG0b5BJNUKUM8EsjUQd/m14WWQ2EyC8l
         JPCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id f23si116090qtm.4.2020.06.17.23.06.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 23:06:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: z1WexuJ50tPYenQtHSE8n4BU/+jsKmM2eGYhpWBMlCYGLNAlMvrR2BdTa1/Z8msBiuKnNtRKf5
 zUFPDq8votjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122682170"
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; 
   d="gz'50?scan'50,208,50";a="122682170"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2020 23:06:38 -0700
IronPort-SDR: MU6t4vmgq/V4iG2DA5HyddfakNLRH0XkDUtxcghhHdS0xNAspwV3Y2uH9eHd9vhpfCAZ0RueNj
 Yzmy2IwcwwkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; 
   d="gz'50?scan'50,208,50";a="291663323"
Received: from lkp-server02.sh.intel.com (HELO 5ce11009e457) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 17 Jun 2020 23:06:34 -0700
Received: from kbuild by 5ce11009e457 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jlnh4-00005m-7a; Thu, 18 Jun 2020 06:06:34 +0000
Date: Thu, 18 Jun 2020 14:05:36 +0800
From: kernel test robot <lkp@intel.com>
To: Gaurav Singh <gaurav1086@gmail.com>,
	Jamal Hadi Salim <jhs@mojatatu.com>,
	Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	"open list:TC subsystem" <netdev@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org
Subject: Re: [PATCH] [net/sched]: Remove redundant condition in qdisc_graft
Message-ID: <202006181358.FcHHxOTA%lkp@intel.com>
References: <20200618005526.27101-1-gaurav1086@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
In-Reply-To: <20200618005526.27101-1-gaurav1086@gmail.com>
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Gaurav,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v5.8-rc1 next-20200617]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Gaurav-Singh/Remove-redundant-condition-in-qdisc_graft/20200618-085703
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 1b5044021070efa3259f3e9548dc35d1eb6aa844
config: s390-randconfig-r016-20200618 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):


vim +1097 net/sched/sch_api.c

  1019	
  1020	/* Graft qdisc "new" to class "classid" of qdisc "parent" or
  1021	 * to device "dev".
  1022	 *
  1023	 * When appropriate send a netlink notification using 'skb'
  1024	 * and "n".
  1025	 *
  1026	 * On success, destroy old qdisc.
  1027	 */
  1028	
  1029	static int qdisc_graft(struct net_device *dev, struct Qdisc *parent,
  1030			       struct sk_buff *skb, struct nlmsghdr *n, u32 classid,
  1031			       struct Qdisc *new, struct Qdisc *old,
  1032			       struct netlink_ext_ack *extack)
  1033	{
  1034		struct Qdisc *q = old;
  1035		struct net *net = dev_net(dev);
  1036	
  1037		if (parent == NULL) {
  1038			unsigned int i, num_q, ingress;
  1039	
  1040			ingress = 0;
  1041			num_q = dev->num_tx_queues;
  1042			if ((q && q->flags & TCQ_F_INGRESS) ||
  1043			    (new && new->flags & TCQ_F_INGRESS)) {
  1044				num_q = 1;
  1045				ingress = 1;
  1046				if (!dev_ingress_queue(dev)) {
  1047					NL_SET_ERR_MSG(extack, "Device does not have an ingress queue");
  1048					return -ENOENT;
  1049				}
  1050			}
  1051	
  1052			if (dev->flags & IFF_UP)
  1053				dev_deactivate(dev);
  1054	
  1055			qdisc_offload_graft_root(dev, new, old, extack);
  1056	
  1057			if (new && new->ops->attach)
  1058				goto skip;
  1059	
  1060			for (i = 0; i < num_q; i++) {
  1061				struct netdev_queue *dev_queue = dev_ingress_queue(dev);
  1062	
  1063				if (!ingress)
  1064					dev_queue = netdev_get_tx_queue(dev, i);
  1065	
  1066				old = dev_graft_qdisc(dev_queue, new);
  1067				if (new && i > 0)
  1068					qdisc_refcount_inc(new);
  1069	
  1070				if (!ingress)
  1071					qdisc_put(old);
  1072			}
  1073	
  1074	skip:
  1075			if (!ingress) {
  1076				notify_and_destroy(net, skb, n, classid,
  1077						   dev->qdisc, new);
  1078				if (new && !new->ops->attach)
  1079					qdisc_refcount_inc(new);
  1080				dev->qdisc = new ? : &noop_qdisc;
  1081	
  1082				if (new && new->ops->attach)
  1083					new->ops->attach(new);
  1084			} else {
  1085				notify_and_destroy(net, skb, n, classid, old, new);
  1086			}
  1087	
  1088			if (dev->flags & IFF_UP)
  1089				dev_activate(dev);
  1090		} else {
  1091			const struct Qdisc_class_ops *cops = parent->ops->cl_ops;
  1092			unsigned long cl;
  1093			int err;
  1094	
  1095			/* Only support running class lockless if parent is lockless */
  1096			if (new && (new->flags & TCQ_F_NOLOCK) &&
> 1097			    && !(parent->flags & TCQ_F_NOLOCK))
  1098				qdisc_clear_nolock(new);
  1099	
  1100			if (!cops || !cops->graft)
  1101				return -EOPNOTSUPP;
  1102	
  1103			cl = cops->find(parent, classid);
  1104			if (!cl) {
  1105				NL_SET_ERR_MSG(extack, "Specified class not found");
  1106				return -ENOENT;
  1107			}
  1108	
  1109			err = cops->graft(parent, cl, new, &old, extack);
  1110			if (err)
  1111				return err;
  1112			notify_and_destroy(net, skb, n, classid, old, new);
  1113		}
  1114		return 0;
  1115	}
  1116	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006181358.FcHHxOTA%25lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
o9LWKXbiqNX/AHiY3wDKTAEA

--vkogqOf2sHV7VnPd--
