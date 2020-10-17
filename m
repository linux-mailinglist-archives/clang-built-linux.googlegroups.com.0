Return-Path: <clang-built-linux+bncBDZYPUPHYEJBBLNXVX6AKGQETTLDLSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7651F29146F
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 23:01:34 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id q25sf2549583lfn.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 14:01:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602968494; cv=pass;
        d=google.com; s=arc-20160816;
        b=w5rswmzZ43Coi8366YUW0h0dWwcE8QfRJMJI/ehPyiKUigiFFQgN4zZ+kceKhRcI5v
         gSaOICQ0jql6JzyPg65667XcjF5rCWj/2EhWQdSh0DRRnuZnlx7pfeM7Q34iXQ9ZdO/G
         qLJR7fnQsZ9b8VfMJaziYkqsvDqSHsHcnlWylbA3u9bFfo+jLV+eSwt9qVB+swkPz0p7
         V1E/zc6ofcOQ7cqhr/4oRWUPCM0OVEnHHgdG+GbEhf49hFCoTZbNX/aocY7CzEtUL6QQ
         XG3o3aUfry34dC9mpi6h2H40O2ugEgWWtMQc72b2Xwr3NuxLcvKHMC7psn8FF5OB2CUP
         FF4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=OSZYsMdRvcZItW8LT5kvS0COYY5k+22P38fpmmMr6W0=;
        b=pGP4cBpHOT4hHYXTC7EuGcrgTWF3PfZbn25DV73Ac8ZfI/BMqQF/irK/c+J8XI5e6M
         71JNLv2chZFDqrcOWQpvpiyCZFv2oQvqb1XTMuv+QTXuv0X4o9hbPNSw5lD6GkkQ5A36
         VYldsawdy83BLbYJUJH7ti3JEUVR+hND9O4szucnXCd3136tci4yNdEQVKwuGtNKH0pU
         bA+e290qwDKFh4L6eJ+fBc73o3oJ1eYx4j/IjC4cYBoZ0faqbA4vk5lllvf9LTNtVF9v
         gVgZE6d5fV3JK6tCS76Zl05A3VzOZMokzKvVbBXaLTaV/SmMBwWReaZXGxzRPPDI0I48
         wAkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=ntIAxdfj;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OSZYsMdRvcZItW8LT5kvS0COYY5k+22P38fpmmMr6W0=;
        b=qf6glVk4xZRF0ikEaJKr3bPoxRyzK6QQSCyYrkg3/dWhfLWyDCLFBuz59kerb12vFc
         Gu7wKMoWWPRqb+XfZqo23lU2H26AOX2NKZ9XXGeGl7/zZ8/qaI011ZLJygoLBvZfJVKY
         7VBPBYfaGreqSnVwcScyKyhO+0o/vmzSoUBl6WbWsA8OyBRfqchRIIzD7g+UjUpSEF1d
         6iPpyDqv/ZPkMBF7DWNtl1Iaz/Ad9v+oHfVlg7PHp82rHroNeWqXtfIkSkeJ1P0BDMLu
         0eMK+q8UzTckkBL6bEZxJuAOmIxWVXR7qAK0WNUR86ds6J3ngm5jXVTrFSfMcSXNRrjC
         ShvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OSZYsMdRvcZItW8LT5kvS0COYY5k+22P38fpmmMr6W0=;
        b=RwlXa4SkxIMKq2Jmkzec2Qf778GwEHLGZZUvdfjS3rQ12Zfx/gi4wi6Szx36yHS2qW
         PKSq1/NLZqEU4yeixQPoFwUDFpAqiXjMMT01hTpII5pkQAdfuuzlfmnJBMhg9Tz41z6x
         5vbCUTD6c4Px8q42g5ehUNdodebIRooyi/KESsIvJ6v0CxDPIAA22xuzpUXl2JSO8vlc
         ECAMtm7mK02OUCIoM3XxuJ8FfkJpTZ4VScxd549dl6AgXTmI3sct8v2l7t4j0LIDWeDg
         wzadSWHWxvZqPjQwVkq3fbsYn98XD8aG0LpHHUOCn6ubSW3yl2gzh/X5lQ+JeQ4Y1xOB
         qIIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VNofCBaM6oXUghLcOjpsK8cU707rtkX7AeW3AfF76Hh4Ho4Lh
	1AoGWdWEFFKHWv/XjteySss=
X-Google-Smtp-Source: ABdhPJyqzYRipP28snMGWiGlJJpR8mrciPUv2nbDy8Di1NvF3xjOi+wGUj3polm81oBgbQ5hmhsTiQ==
X-Received: by 2002:a2e:8e72:: with SMTP id t18mr3187710ljk.445.1602968493987;
        Sat, 17 Oct 2020 14:01:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7313:: with SMTP id o19ls919604ljc.11.gmail; Sat, 17 Oct
 2020 14:01:32 -0700 (PDT)
X-Received: by 2002:a2e:9c3:: with SMTP id 186mr4024979ljj.134.1602968492804;
        Sat, 17 Oct 2020 14:01:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602968492; cv=none;
        d=google.com; s=arc-20160816;
        b=EMIskxZemL7w/LYEuQs4OKubBag6R72TFcY0AHuVjaKA3fGW4a0dga5nePqVcg/Aif
         jgOxiSv4tAn6EfprlngPV6zkYnGNnNxSJ9F8pcA3gWchCXa8qnVkSgmvdIXZ1Cubgytl
         V2zH/3T/LUPbsWEFFXxPmgzxJLVLqtnigPd+u2K0YsLYKVC5QDhcdb7TXxa6W3VmDJHi
         JebokSArAteX9cG/DB4ELwOfsafR5nSADjqSA34G+DDM4OtxUqX83S4hyRZr5GmGjjHQ
         INGp0daUfIqEyIYyrNFQ/FCD0kQDeDo0O/Ogs9s/KN13/T6Ers1y4KHbILdEpneUX3NT
         SPqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QU5tUnKrk3cCgEOM6DUuSpHohPcIoidzngrqxPrVqlg=;
        b=L8q57o3ro9FnyXcVmKXtUzYjXp3mTtjI5dzZ+m9jAJDWOk5bjHy2U59ZDgepADgbow
         hmGZw08r7Tj/C5ni2zWe4f7889RAO4CPMghxR2GV+4YpLHJZBJ7AIxva1J0+TOhKtqOA
         4kzft2IexnZ0nnDB7kU/UUhhuHaPd8f2YepjRkecDWFT21TclVI76xfYwbsjkTxmjLrZ
         bOR08uOwxoczXH+ra6+OAMPasBzWh8+ZxnCGZBDonxHgxExRgEGdKIQK/JhCUqpgcBgE
         tKDoHieXVFjOVaRDPsrkH/TVXHwONNrXdzyqLNO3Fq8UQyLAhtgAgcxyLPau5ow1I4Yv
         ltxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=ntIAxdfj;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id 11si147206lfl.4.2020.10.17.14.01.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 14:01:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id c22so8494398ejx.0
        for <clang-built-linux@googlegroups.com>; Sat, 17 Oct 2020 14:01:32 -0700 (PDT)
X-Received: by 2002:a17:906:1a19:: with SMTP id i25mr9957370ejf.323.1602968492144;
 Sat, 17 Oct 2020 14:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <20201017160928.12698-1-trix@redhat.com>
In-Reply-To: <20201017160928.12698-1-trix@redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 17 Oct 2020 14:01:22 -0700
Message-ID: <CAPcyv4jkSFxMXgMABX7sDbwmq8zJO=rLX2ww3Y9Tc0VAANY8xQ@mail.gmail.com>
Subject: Re: [RFC] treewide: cleanup unreachable breaks
To: trix@redhat.com
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-edac@vger.kernel.org, 
	Linux ACPI <linux-acpi@vger.kernel.org>, 
	Linux-pm mailing list <linux-pm@vger.kernel.org>, xen-devel <xen-devel@lists.xenproject.org>, 
	linux-block@vger.kernel.org, openipmi-developer@lists.sourceforge.net, 
	linux-crypto <linux-crypto@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-power@fi.rohmeurope.com, 
	linux-gpio@vger.kernel.org, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, nouveau@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, 
	linux-iio@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	industrypack-devel@lists.sourceforge.net, 
	"Linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, MPT-FusionLinux.pdl@broadcom.com, 
	linux-scsi <linux-scsi@vger.kernel.org>, linux-mtd@lists.infradead.org, 
	linux-can@vger.kernel.org, Netdev <netdev@vger.kernel.org>, 
	intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org, 
	Linux Wireless List <linux-wireless@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com, 
	linux-nfc@lists.01.org, linux-nvdimm <linux-nvdimm@lists.01.org>, 
	Linux PCI <linux-pci@vger.kernel.org>, 
	linux-samsung-soc <linux-samsung-soc@vger.kernel.org>, platform-driver-x86@vger.kernel.org, 
	patches@opensource.cirrus.com, storagedev@microchip.com, 
	devel@driverdev.osuosl.org, linux-serial@vger.kernel.org, 
	USB list <linux-usb@vger.kernel.org>, usb-storage@lists.one-eyed-alien.net, 
	linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com, 
	bpf@vger.kernel.org, linux-integrity@vger.kernel.org, 
	linux-security-module@vger.kernel.org, 
	"open list:KEYS-TRUSTED" <keyrings@vger.kernel.org>, alsa-devel@alsa-project.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=ntIAxdfj;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Sat, Oct 17, 2020 at 9:10 AM <trix@redhat.com> wrote:
>
> From: Tom Rix <trix@redhat.com>
>
> This is a upcoming change to clean up a new warning treewide.
> I am wondering if the change could be one mega patch (see below) or
> normal patch per file about 100 patches or somewhere half way by collecting
> early acks.
>
> clang has a number of useful, new warnings see
> https://clang.llvm.org/docs/DiagnosticsReference.html
>
> This change cleans up -Wunreachable-code-break
> https://clang.llvm.org/docs/DiagnosticsReference.html#wunreachable-code-break
> for 266 of 485 warnings in this week's linux-next, allyesconfig on x86_64.
>
> The method of fixing was to look for warnings where the preceding statement
> was a simple statement and by inspection made the subsequent break unneeded.
> In order of frequency these look like
>
> return and break
>
>         switch (c->x86_vendor) {
>         case X86_VENDOR_INTEL:
>                 intel_p5_mcheck_init(c);
>                 return 1;
> -               break;
>
> goto and break
>
>         default:
>                 operation = 0; /* make gcc happy */
>                 goto fail_response;
> -               break;
>
> break and break
>                 case COLOR_SPACE_SRGB:
>                         /* by pass */
>                         REG_SET(OUTPUT_CSC_CONTROL, 0,
>                                 OUTPUT_CSC_GRPH_MODE, 0);
>                         break;
> -                       break;
>
> The exception to the simple statement, is a switch case with a block
> and the end of block is a return
>
>                         struct obj_buffer *buff = r->ptr;
>                         return scnprintf(str, PRIV_STR_SIZE,
>                                         "size=%u\naddr=0x%X\n", buff->size,
>                                         buff->addr);
>                 }
> -               break;
>
> Not considered obvious and excluded, breaks after
> multi level switches
> complicated if-else if-else blocks
> panic() or similar calls
>
> And there is an odd addition of a 'fallthrough' in drivers/tty/nozomi.c
[..]
> diff --git a/drivers/nvdimm/claim.c b/drivers/nvdimm/claim.c
> index 5a7c80053c62..2f250874b1a4 100644
> --- a/drivers/nvdimm/claim.c
> +++ b/drivers/nvdimm/claim.c
> @@ -200,11 +200,10 @@ ssize_t nd_namespace_store(struct device *dev,
>                 }
>                 break;
>         default:
>                 len = -EBUSY;
>                 goto out_attach;
> -               break;
>         }

Acked-by: Dan Williams <dan.j.williams@intel.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPcyv4jkSFxMXgMABX7sDbwmq8zJO%3DrLX2ww3Y9Tc0VAANY8xQ%40mail.gmail.com.
