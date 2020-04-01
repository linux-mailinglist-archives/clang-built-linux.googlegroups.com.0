Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBMV4ST2AKGQE77UIMWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1067619B8CE
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 01:05:24 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id r8sf1606252otc.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 16:05:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585782323; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qz/ahgHOFRcCdzkDSXZWi5EXjalJvxnU6lfnY2ZpAQZ+yPInlrv//aUBb3xhMMHveY
         hJLrr2HvQQ+uV00rdZiFSSVnbNfbdPtW+aqQbW52ap0QtInpISJwkeOFotfUrfIVE8t8
         R9Pz5LX+GUdWe9UG9RweyB0Uvo7IbKwKO4HDOherfhDYWpa58LBLxpn2VDU6OGmP6LqX
         EAodCsSxb3up25MjBou/CHlljMWockpfHAVEEMZv2PPCyx9MX+kV7RZEESiDxrQhLeWO
         8e2QRMLlACYpZMxOYUtqRrdt5gZ965GInBwI/+T89TzcoHSpxeXRC8Aix+lWd7rnFo5f
         dkXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=GbHIkxxOK5maPfe+ZWYJ818qdflEMNQrgDuuinnu/MA=;
        b=FFedsA7PxqrOlkg5j091FIb376SJYDtYmDKKezN0qTBmhg1EUOW+KVi3B4zJE0c9CZ
         bp8KCAit6ahgrxNw/kej6l7opB9zr2XM6uCOLnUh/SLBQcD2i7M2hrviF7QRR1TipInQ
         P5xQIyDzeKsvbtppaNqtYtaGeF+muKrjd3Ixt0O/QX+7yb75xybkWu7ZUammAfqtwL58
         EQea8XHUi6U0qAvuCEc82GUIYuusNoH+SA2T7oa7xCz83xZtAtLipwWqgqq/rw7RT7r3
         V1O/uJr3x6FjMMbbK1UlJKBitosixGAgE6hDXuiw05s3rWyIV2dR2Ia+Xlt4JPEHnbid
         9fQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GbHIkxxOK5maPfe+ZWYJ818qdflEMNQrgDuuinnu/MA=;
        b=tf37qnu6nfs8Ip2t+kJxppfNiauFY71mN2y3zfsOqJbW9ZhnOkWOo/2vt3zsS9LfyM
         TCltFE9TCywh5U6mSO8YYDcnxnzSaxVLUmZiahJks0a5gRqv9gkbo3nGLJ26/4DgcTG1
         FnZtNYlAxaB/66wEkXPwVg2KF+NE+uV6r2R9N3VGjvqRDEzDStgkYaEqssiUsGNAQ9hn
         ybDrw6jz62RU+5TwwDOZgYpjV5wtFPAHF8fKOSqIciWdMe+GUenFZGL2zfB06lkA+BiQ
         lJJ0PtaQ9/28cqrWLfUI4C7edXtWOGI1/bR/LO2YXaD63pg4Fyo8k3mD3zrinsdXXwjA
         Hgog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GbHIkxxOK5maPfe+ZWYJ818qdflEMNQrgDuuinnu/MA=;
        b=AOE2SeKLnvpHIoI8CmaZ+gAnqndn1IUhC05b8hR7eYTcd2glg0lwaCkIhfIGun5DSP
         tExhFHZh6CZGrAPf1R50rwM1qE7wHoEfGbd0lyrEvG7h2h5mTlRn+TozUw4G/fjWIqSn
         PufJXAM1N0Q4dTKZPaW2y2craxRx+rYFsnRsT9dFxppjqHtwU815wMq2MuqmhktiPatl
         W2HKZXPyGhs/atkBQ1WZMsuvHjb+Vz08qao7azy+Cuxz5lqlzZDykgjRHru6862t4rDM
         sKV8clQq/vVamfaDgTUiePgmF2xPUb59SGE6sxI1OQXeju6eG1v2d2J8nDHxj+D56KVy
         92Vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua00J4+r9B0paZFfhYjjjtSyEUSWEFrMrlxIDqeyMCEsSM365T9
	T/SwQNPjCHloHmH2foBwbbQ=
X-Google-Smtp-Source: APiQypKmQQ06wuA64NVugFF8ovh0M9xgqex9/OwhvbsixMLBsq8YroU7xK32I6eYwnenCwrVlted+g==
X-Received: by 2002:a9d:8f3:: with SMTP id 106mr184851otf.328.1585782322853;
        Wed, 01 Apr 2020 16:05:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls744988oif.3.gmail; Wed, 01 Apr
 2020 16:05:22 -0700 (PDT)
X-Received: by 2002:a05:6808:605:: with SMTP id y5mr264733oih.172.1585782322524;
        Wed, 01 Apr 2020 16:05:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585782322; cv=none;
        d=google.com; s=arc-20160816;
        b=fcDyXXzyOH9bTagC9szYkxPJoikqbyKMh2BftHIgIauLidaTrLFhvg/1ZvrY53mfkW
         Dl6GxYZ0SsBwqZYIFN2O2TMO67yUK3d083ExDZBZ+y0vkQ99fb/d/Il8soBSNLlzpgxs
         93YdWcY9UQ8O8PrI8tHt3AZkoGpSh34tYWZlQKvgc77p3QwM2R2+Pl4eRYk28PrIhe5H
         JBwxZpvDfGraE2z8Bj8KvTI+ehkUQ+eBvF8RUsm0uXClek3Zid370gTJeZ4iQ9qVU/p6
         0ZWwsB1m2ogtmH/ZWyIczahOnoaFlQQ+28TJj84zXtrJxbfxXeu8pzoXWuPHSUOcUV9l
         ARiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=qV11kARr6kS0Zej7PuOl9mpddCWdHEcfuxMY8W/ENOg=;
        b=hy6ZQ5l77khQhIaC4kBE+LXulf4NhkEFvNZNNi1iqNqVYM5SOKXlA5Me98qAYQiHaI
         HzI1p+N9tub4h6AwM+/EXicrkeVUarc99AmTEE5bDIhSLcK4SxXsD7doEECAwQI6s/QZ
         nol48YoRhwIgFbQGpxhzEQm2YgWDDHjWGjDbNr+S4i1nDq5oH3/MnkhgMiJAOAIMGkP7
         Q55vJnt06fmaEkohyz7+aDS8PdKjDvyNZIF/qmg4fSLjZbf2+hNAdzXJP7c6CBjbls+4
         zRcI23m5gcSyZsYvRkcZOLEN1A4Dgsw4mpLQaAGCF1oUO3L20Q3SqJsLvw22mZovzoKZ
         n4+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id x23si303823oif.2.2020.04.01.16.05.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2020 16:05:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: KBmKMAarfc0OksE2y08g7jdSGSo9bjmZA/OrT9A2RCxxj/RwW5sPbOWVTEPkXz+xWKeArX6S+w
 w2o/KKHpJzIg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2020 16:05:21 -0700
IronPort-SDR: ZIlyBX7qf6CFewib8rv/C9NE3o9wVTQCvbLWkI9MkZCbxh/WXcERTxSkJ5s/OrjdVr0ORqyWzM
 xp10HO35e7fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,333,1580803200"; 
   d="scan'208";a="449396866"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 01 Apr 2020 16:05:18 -0700
Date: Thu, 2 Apr 2020 07:04:43 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	intel-gfx@lists.freedesktop.org, kbuild test robot <lkp@intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/23] perf/core: Only copy-to-user after
 completely unlocking all locks.
Message-ID: <20200401230443.GA3836@intel.com>
References: <20200331104209.432176-2-maarten.lankhorst@linux.intel.com>
 <202004011452.AyhP9ZdC%lkp@intel.com>
 <CAKwvOdniUVifJ9b1y9bhHPkdGkLasf=mkx7XwAK_ZTEk2Q+BKg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdniUVifJ9b1y9bhHPkdGkLasf=mkx7XwAK_ZTEk2Q+BKg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Apr 01, 2020 at 11:55:28AM -0700, Nick Desaulniers wrote:
> On Tue, Mar 31, 2020 at 11:50 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Maarten,
> >
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on drm-tip/drm-tip]
> > [also build test WARNING on next-20200331]
> > [cannot apply to drm-intel/for-linux-next tip/perf/core v5.6]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Maarten-Lankhorst/Revert-drm-i915-gem-Drop-relocation-slowpath/20200401-005710
> > base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> > config: x86_64-randconfig-d003-20200331 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 5227fa0c72ce55927cf4849160acb00442489937)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> kernel/events/core.o: warning: objtool: perf_read()+0x306: stack state mismatch: reg1[3]=-2-56 reg2[3]=-1+0
> 
> Apologies Maarten, this objtool warning looks like maybe a compiler
> bug for us to fix.
> 
> Philip, I tried to reproduce by cloning
> git://anongit.freedesktop.org/drm/drm-tip, but I don't understand the
> URL in the report.  Were Maarten's patches on top of drm-tip?  Is
Hi Nick, this is report for patch we receive from the mailing list, so the patch series
is applied on "git://anongit.freedesktop.org/drm/drm-tip drm-tip", and form a branch
at "https://github.com/0day-ci/linux/commits/Maarten-Lankhorst/Revert-drm-i915-gem-Drop-relocation-slowpath/20200401-005710".

The url is the real code to be checked out that can be used to reproduce.

Thanks

> there a tree you found them from (rather than me fetching the 0day
> branch on github)? (Or maybe this is what a report looks like for a
> series posted to the list?)  Apologies for the naivete, but I plan to
> triage as many of these reports on the Clang side as I can in my free
> time, so I want to make sure I understand precisely what failure is
> occurring where and how.
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200401230443.GA3836%40intel.com.
