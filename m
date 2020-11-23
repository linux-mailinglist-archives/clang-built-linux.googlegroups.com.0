Return-Path: <clang-built-linux+bncBCS5BWNH3ENRBRNV576QKGQE6Z4SZCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7042C0F46
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 16:52:38 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id q199sf13230246pfc.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 07:52:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606146757; cv=pass;
        d=google.com; s=arc-20160816;
        b=rDwCWAZSmSJ/7ZSuapyGSiv7B2+DKxia5mweCWX1klsicmPlC/R24Bp+YpRNM5ZgmT
         AswA9VaUlOizyUDxJe61e9B3gAnFjNkJh5G3+xoMI1Px8sPkhOFla9/CIwL5C2YzqoRG
         EBONFrA9Ocf1aK0VjepvOhNjfpF/9IWrO2XWzvmvA7LUw7uiEWMorPnepbQZ8vn3gxxb
         C2uQVxERkzw3n4GjCZvNixlJdVonnm3z5kOR2/i2+1GVEcqg5I5AW5FZ7SMZrj/f5tRT
         GPvuKVnGHL3c1kc/GsldpotanQxyhZipqzfPCr8tHs8gCxoJrhVMoJWg7GE64MLYAW3C
         Ottw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:organization:in-reply-to:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=hI+PBnFT+i0wMdAF/3EZzaHcd/VTCxFcRAJbbJj1L9k=;
        b=dvWmBF2kXV0iDTFFApVySlQrT8E64TUlrnU5NYxLN2KqIrV2tY+0ANP1y1Ob54iY8N
         nnbaSf9yWdrDuR5WJanhYNNkDVV/Hq/gG0DlvYknAMRlQGMj8m/I7vs3UUZlx4YfKocS
         3Ror7fAEhd3ZC6cRMJLQLuwQ+0MQk7WkRZ8BtfXRX++ZECITthHbWDMFieSgJwU29i9d
         17o620h8yfJHJC0TnLHW0Kzdh3YGuTrofVjp0caiJlMLPMKQ85d0dHC4FJF/XSbz3yx9
         wsYccHK4KXsKs3pq3pR7V6bPzCtbJeY/GQ1zzCGXfmw4gOkdw+cmqDJQVZtjQzNIeCZu
         JVdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hI+PBnFT+i0wMdAF/3EZzaHcd/VTCxFcRAJbbJj1L9k=;
        b=LwZzK2TfG2rtCCKHgfSFlDV1l7XURnbaWTfWocd+swHrGFC73SlUkpMcCLv72ysNKF
         fcv9HtNt4bAsuCiMgvPgE3QBh/DjS5wmt8HoC6uEDq3gxs4aF/1voIri23y55it3743X
         KZqWJdGaxxgp9Qr5B9OdANL/4/Rc2A2RFqWiNHOVPNnhZrvXRDeYL4aLitHr6U2bFwKq
         oGhFLc0Q89wZe7nEdaIb2WdzNcPS4V5cLib3munmVU3ZopNDtDFqMYqlyWSta6L6v1in
         Ln/o5woTcBOwGTtTLM+kneUvWMgpuoaZ50QJWskNLWE0Gi9o5fLiCKTzhR+D1vNgf+QO
         vJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:in-reply-to:organization:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hI+PBnFT+i0wMdAF/3EZzaHcd/VTCxFcRAJbbJj1L9k=;
        b=HJz42c5BzXqNhaXoOmLza5p2CdO0JOaet8Iqq5qrwQjGXmeatg8qKFAZdkdShWXT78
         Gas3JgpAr+iMVbxcokXlDcYL9OKrWO5ZDafokgmWRqZXE9t1Vkawysg06qaxSgfW+6gA
         YEGpUKfg+winRGcDREgIKJgvUDNe42jzOFptJdRdoEH3G9IGw8Ywyhzt3ktcvIT+clep
         rlTsxaoofvAU8m3SueTsDF6uh4KU8k11SwdHOyl4WxRdnG8Fkb8qOsYTDrdflgemSmaj
         Z2bxIxgx84dTP7JYgxSzTKlP+fjSFZ1A6XSlQX0QX8o9RZ5RZ2KWBsUS4EOpqx7p3780
         kMZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334F9Z6ae7MXeyGFFlj2ON69Wp4uWnT5fg0pp7UK1U0bdOaHaXs
	/RGYk0N/hRr8cTbOJQqwPWk=
X-Google-Smtp-Source: ABdhPJx2lCb31lF+6uGUmtTVTcN+TIFT9tq+V7oOJzjBj318P6GuSi4eutkkzflsA1koHpD0MDbCfg==
X-Received: by 2002:a62:25c7:0:b029:156:72a3:b0c0 with SMTP id l190-20020a6225c70000b029015672a3b0c0mr17153pfl.59.1606146757160;
        Mon, 23 Nov 2020 07:52:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8508:: with SMTP id bj8ls6405665plb.2.gmail; Mon, 23
 Nov 2020 07:52:36 -0800 (PST)
X-Received: by 2002:a17:90a:8589:: with SMTP id m9mr427339pjn.190.1606146756495;
        Mon, 23 Nov 2020 07:52:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606146756; cv=none;
        d=google.com; s=arc-20160816;
        b=I1vLQe0GPFoan2rU+1oxk5HEbFjVyihaXsoj38nuq6QZSeJBB+4P61IOGPP1+F7wlg
         O5tqftEz8mB1QgvhFeqbyTGl32JYBVcfeHt1XXCBCwvJ/IZClzzlG3DRAJ7KMRj7J5/F
         y/I+dAi5bB34mg44/MdiwPImcyCyfWV3QJkswYx6LuZYaIHAT2xmsbi7MByst4TviB1y
         /hFN8C56HQa7q3JKtBFFwZP/896H0lTIYO32UtBmQ4EpHc0U2Rz35D5mzgYNEB9q/9jr
         dcu8Q6C8JGXw75JS7hj2BAkF5YxmFQ4kV5JVGqxSUx/wEF34vvyeles1APEeELwAzTBN
         rz0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:ironport-sdr:ironport-sdr;
        bh=+jIuyaNuG6gbAhomo+UfPKEAVF76egAxzJvxPwXQGy4=;
        b=yU5P7LM4meVA4R0QTz6paqa5YbZRaGvp9D4YqgILZSsHgRzeCitxc4/DT0TlTfXyI1
         VT1kmxEDjH2deupZjU+8ypUM04csUEo07BXvV6HZlac/f2Vvgt6uR+mOCorMg8EfSlqV
         Slt4FVwFbJXDyY9Rk4CI1J58JoFxYX7jnWR6G+7H8kDlAKLk2im6WnnyzlBK2ed6tWDU
         IbVkAmJgNA2tIoHWCyUuIClaV9DA4fdCI4bCQVDw1wjdw/lcF9Fl/C4z4yHAUTABO1c+
         7OrKyGsdtNrpJCNq8UfeuX7QCoPu0vfWUzOGYZoTH3ZEfcRemVoPZo4UmcMQGp1sVDGM
         6NzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id o2si908490pjq.0.2020.11.23.07.52.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 07:52:36 -0800 (PST)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: DHYc9hwTzi2cVuWaxEQNpCDZlUPN0xzdb8jvjU88coIr2bViWOwQh5PPYn7eXPe4okB0BEPHiw
 9Fe9jzyaduUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="159556114"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; 
   d="scan'208";a="159556114"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2020 07:52:35 -0800
IronPort-SDR: o6LRPZSLFHblJ72nLIxI7QtuEJsSPQd11jVZTPC9b01xjBsR6V5ML2IOh4GsWUUm1pKbyVJ0KQ
 V9qBxJqg/0zw==
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; 
   d="scan'208";a="546463497"
Received: from suygunge-mobl.ger.corp.intel.com (HELO localhost) ([10.249.40.108])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2020 07:52:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, trix@redhat.com, joe@perches.com, clang-built-linux@googlegroups.com
Cc: linux-hyperv@vger.kernel.org, kvm@vger.kernel.org, linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net, keyrings@vger.kernel.org, linux-mtd@lists.infradead.org, linux-scsi@vger.kernel.org, amd-gfx@lists.freedesktop.org, cluster-devel@redhat.com, linux-acpi@vger.kernel.org, tboot-devel@lists.sourceforge.net, coreteam@netfilter.org, xen-devel@lists.xenproject.org, MPT-FusionLinux.pdl@broadcom.com, linux-media@vger.kernel.org, alsa-devel@alsa-project.org, intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org, linux-omap@vger.kernel.org, devel@acpica.org, linux-nfs@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org, patches@opensource.cirrus.com, linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
In-Reply-To: <5843ef910b0e86c00d9c0143dec20f93823b016b.camel@HansenPartnership.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201121165058.1644182-1-trix@redhat.com> <5843ef910b0e86c00d9c0143dec20f93823b016b.camel@HansenPartnership.com>
Date: Mon, 23 Nov 2020 17:52:20 +0200
Message-ID: <87y2ism5or.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jani.nikula@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=jani.nikula@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Sat, 21 Nov 2020, James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> On Sat, 2020-11-21 at 08:50 -0800, trix@redhat.com wrote:
>> A difficult part of automating commits is composing the subsystem
>> preamble in the commit log.  For the ongoing effort of a fixer
>> producing
>> one or two fixes a release the use of 'treewide:' does not seem
>> appropriate.
>> 
>> It would be better if the normal prefix was used.  Unfortunately
>> normal is
>> not consistent across the tree.
>> 
>> 
>> 	D: Commit subsystem prefix
>> 
>> ex/ for FPGA DFL DRIVERS
>> 
>> 	D: fpga: dfl:
>> 
>
> I've got to bet this is going to cause more issues than it solves.

Agreed.

> SCSI uses scsi: <driver>: for drivers but not every driver has a
> MAINTAINERS entry.  We use either scsi: or scsi: core: for mid layer
> things, but we're not consistent.  Block uses blk-<something>: for all
> of it's stuff but almost no <somtehing>s have a MAINTAINERS entry.  So
> the next thing you're going to cause is an explosion of suggested
> MAINTAINERs entries.

On the one hand, adoption of new MAINTAINERS entries has been really
slow. Look at B, C, or P, for instance. On the other hand, if this were
to get adopted, you'll potentially get conflicting prefixes for patches
touching multiple files. Then what?

I'm guessing a script looking at git log could come up with better
suggestions for prefixes via popularity contest than manually maintained
MAINTAINERS entries. It might not always get it right, but then human
outsiders aren't going to always get it right either.

Now you'll only need Someone(tm) to write the script. ;)

Something quick like this:

git log --since={1year} --pretty=format:%s -- <FILES> |\
	grep -v "^\(Merge\|Revert\)" |\
        sed 's/:[^:]*$//' |\
        sort | uniq -c | sort -rn | head -5

already gives me results that really aren't worse than some of the
prefixes invented by drive-by contributors.

> Has anyone actually complained about treewide:?

As Joe said, I'd feel silly applying patches to drivers with that
prefix. If it gets applied by someone else higher up, literally
treewide, then no complaints.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87y2ism5or.fsf%40intel.com.
