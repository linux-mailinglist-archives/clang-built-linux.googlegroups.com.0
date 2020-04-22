Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNHMQL2QKGQEOP5M54I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 562AA1B4F4C
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 23:25:10 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id i14sf2487121pgk.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 14:25:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587590709; cv=pass;
        d=google.com; s=arc-20160816;
        b=zGQa9/UWNAmu23k+rLxq+O4ZroVOvS+AUaANBsCoNjYIgFGv1i7YYevo2Z8UNsDAK9
         ZGd3mR2IglgL4n5T7bECtKJt2PBwWpa6+hgJ46ho9dQacIigG61JQbPJsCWrI3iWBAlS
         9TBKpYPcU5XPTN363GNotuPpdOoU19K3QHc19XS0SWeUSp9mqpzL7ODrj3+wlfjpOl/W
         +Zo7U4gzxYsMt8nttFSZM8zDeSKu6/udClxYdZMFmJT8JBg3dlBWucRZ1I1FEz55928v
         iQ7t8vwkc7dr/d/sfx0MpTt5giPjwdJUeG1NMQGuMtayLH2Dq3E8xSQkaOCIcCyMtMIo
         jGIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k9yqmzJdIpmMxaUYBz/guA9JfwY13eovRggswYKccEk=;
        b=buwZFrzwnlOeqImlio1tsvHKDj+X+KSL2yUS+vrIA65ETOiqJP39VMtTJpecDOIGSZ
         sSPeb47UgQDIPL5/YbrHxbM8RYOAOR1U+9x6+fectlcYiT5GFMvAM+6i8DY5J3kisHLu
         36exCpkBbl4caoTTdcPnGEnufooU/NmNjIOvLh9ygqgWOby6Z4Nedg9JLpsRKJZuNLzV
         umLeLNLbwDxBmoCvnFMjmkoGbe1yPfQlOIF1ONEgABcjU3N8mBA1GcJFQtagblxeZw6E
         GYXGER2soHJOniEH9x7vqk3skQUqAZYfWum+ExdMZwIk9Rm/Q4ipDzKMObzsz+uVFjv3
         g7+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Ut/Bmj5u";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9yqmzJdIpmMxaUYBz/guA9JfwY13eovRggswYKccEk=;
        b=szctnnAGYzrh6X2j6Tr6wi0hVvTfS4Tbi+cCztPmwwF9yHO80T5YYQy/d3vP0kc9n8
         avyBsp2Bv5jsGgH7z5tuBSdU946JW+Yaw5181sREWS95XbZ4iqQVdTRjoifYEm3rp9PJ
         D7sXsoeREFuiskUgNJrW3HeJfG1qStMYmToKvG52vtjcygMlCdCDVL4nTVPkhb7wck2i
         pVQL+KnNN85P88+lO8/OffiNu2gHxzEpin71iGVFshh4pnb2pPxnPXZv3Caqofr610Xu
         q53Y9dBoOFseKNsLPKhZHXghWbKHUMEzITrcdmVmnyUqxLk1RrsNJ5duwCss3YwqmvQJ
         yb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9yqmzJdIpmMxaUYBz/guA9JfwY13eovRggswYKccEk=;
        b=rJlKxVHX7R4eYwgXsFshyneLfGPJ/vtrHNQQds7J9LrCiOhQxZM22PDD5tErLQcfZz
         WI/sHcvWhc3GkTAZBePREnjO1fByNGn0sb1cfgz194t5yuRlHrSZ4ux7FmvgIPEtn0uD
         xn6UCSfO2DSad9oGaqcSF0ZfK5Luesdhu7zhuoQe5+oNT6DlH8OPpDA/+ivqmcbO+yFX
         9bnz+J1xqnqkR/AEQUlSCnm6hnSZq+SGQHaeN97ifc/feNjWCjGy8GZCChF9orLnT/g2
         vT6hKqmUsRnOkGfJXMaPiYNbtv7Yg3Af047hD9MvsP3d3lOgqhw5StDgqJdJJTynff3Y
         1/Nw==
X-Gm-Message-State: AGi0PuYY2KGyZRlENzr8KCZMSfCuzA62n3lX63o140lAGqxSLwMzJ0eW
	iw1yS5/SrlU8/00sxFVpols=
X-Google-Smtp-Source: APiQypIyYYvcpJJyM4uo/Teuv1amY/XIIeevrf8Q4X6tuJxDvuDXUDzgJcp/H/tyb6RRTUziZs4qdA==
X-Received: by 2002:a62:5b87:: with SMTP id p129mr505740pfb.5.1587590709014;
        Wed, 22 Apr 2020 14:25:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7790:: with SMTP id s138ls1523632pfc.11.gmail; Wed, 22
 Apr 2020 14:25:08 -0700 (PDT)
X-Received: by 2002:a62:be19:: with SMTP id l25mr499015pff.304.1587590708546;
        Wed, 22 Apr 2020 14:25:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587590708; cv=none;
        d=google.com; s=arc-20160816;
        b=l3dIJtHgCbaWdYxK2fPNlOlSI0no9RoOszv3PB0t+jVMhdmaWPrjDodrAs3nNj9LhJ
         k1tVo/leDRHsKV7b9bChz/Mu07Hn5FpXkYJj7q9hjT96U47vs+A7Dx5z1sNuC47F6VD7
         +iPVittLTwLX6RErqmrg2zrVf2GAWlTcIGAkXX5ZdLyL1ELbYEP6kKrVlOm889m7GGAx
         XYaeTU2O9H+bhs5P8g3OGVHyE+8+zKPn12FuZPMZdhIRvRNUunK98ineRieNw9Z6sjwv
         FlpVqqF6m0TSxQ32brqwJzP1Hbi0b5Cj4efC0X0ZAcGDqtmTtMgkAsk1GlNw1vbw1Y+M
         Meaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ERFnmtA1PyeZJdQ62un11xfdSZSd2Gi50rPc2dY8Uj0=;
        b=GvxpHdcq2ZjruD+/gmxd9QVXx0W2mhL/Yjgtw5yXXKT/0fwRVxf/DJ0tle0mICRSWv
         iJD86zwEKcKFoZyTlrKe4epOqOJlPsYirD7pS6mvClbdu5n2lxq3Hb4rkOH1Z60oyNPw
         a4xNV3AjulLN/99ltIRYQuzNdGERWHarT5yTBBBILVKyf1Q303buMIfgWli5hDXvA0oa
         zXLFPeClwGGn/eikAlf8qw4cQcP5+64Gc4yhzks5PbxcvDnovnTfFZXs8wWZ5xFGKV02
         m+92YXZaagqIgCxDG2gk5aosjMVpotF8lFvjgF9cQgBA2i7UlsrC7CIHVjdfLuUPQEfq
         YYOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Ut/Bmj5u";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id c17si14478plc.5.2020.04.22.14.25.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 14:25:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ms17so1540208pjb.0
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 14:25:08 -0700 (PDT)
X-Received: by 2002:a17:90a:a2d:: with SMTP id o42mr766294pjo.164.1587590707823;
 Wed, 22 Apr 2020 14:25:07 -0700 (PDT)
MIME-Version: 1.0
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com> <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com> <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
In-Reply-To: <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 22 Apr 2020 14:24:56 -0700
Message-ID: <CAKwvOdkjGRPfO_=2So7HLrVPBr0SbT+zjJRYhFEeBxPCZuJoVA@mail.gmail.com>
Subject: Re: [PATCH] ASoC: Intel: sst: ipc command timeout
To: "Lu, Brent" <brent.lu@intel.com>, "Rojewski, Cezary" <cezary.rojewski@intel.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, 
	"alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>, Kate Stewart <kstewart@linuxfoundation.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>, 
	Jie Yang <yang.jie@linux.intel.com>, Liam Girdwood <liam.r.girdwood@linux.intel.com>, 
	Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>, 
	"amadeuszx.slawinski@linux.intel.com" <amadeuszx.slawinski@linux.intel.com>, Manoj Gupta <manojgupta@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Ut/Bmj5u";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Apr 21, 2020 at 9:16 AM Lu, Brent <brent.lu@intel.com> wrote:
>
> >
> > Regs width difference between BDW and BYT comes from specification. BDW
> > has IPC registers which are 32 wide. This fact ain't exactly the reason to modify
> > sst_shim32_read64.
> >
> > I'm sharing Amadeo's point of view. Your change should slow down execution a
> > bit - but that might be just what handlers needed to make everything work again.
> > Debug prints also slow down the execution what could have prevented you from
> > spotting the real problem.
> > Let's ignore the memcpy stuff for a moment - could you focus on elaborating
> > the scenario where such issue occurs? Your initial commit message also skips
> > important bits such as platform used when reproducing and so on, please add
> > them.

Splicing in Manoj, from CrOS' LLVM team, who has done a ton of work
for building Linux kernels with Clang.  Manoj posted this on an
internal thread about this issue, that I think could help inform the
discussion upstream:
```
I saw the upstream discussion and would like to clarify a few things:

1. __builtin_memcpy makes clang emit a call to memcpy.
2. In Linux kernel: memcpy implementation is provided by Kernel, not clang.
3. clang 10 used to optimize trivial memcpy e.g. 64-bit memcpy was
optimized to two 32 bit reads and not calling memcpy at all.
4. clang 11 does not optimize trivial memcpy if the program provides
its own memcpy implementation i.e. it defers memcpy to the
implementation defined memcpy.
4.1: As kernel provides its own memcpy, this code here now calls into
kernel memcpy .
5. If the code now does not work as expected, this is because it was
relying on compiler to optimize the code to two 32 bit reads and not
calling memcpy. i.e. it was just working by chance.

So, replacing call to memcpy by an implementation that does the reads
in a loop is the right thing to get the previous behavior.
```
In particular, I'm curious if the readb/readl/readw macros
(arch/x86/include/asm/io.h) should be used here, which are explicitly
designed to prevent multiple reads or write from being combined into
memcpy()'s for MMIO?  Though I have no idea if that even applies here,
and have only been paying attention to this bug from afar, so sorry if
the suggestion is just noise.

> >
> > Thanks,
> > Czarek
>
> This issue is reported to happen on BYT Chrome book (rambi) on Chrome-v4.4
> branch after changing toolchain from clang10 to clang11.
>
> The reproduce step is simple. Just run arecord multiple times (<10) then you will
> see error message for hw_params ioctl failure.
>
> $ arecord -D hw:1,0 -f S16_LE -c 2 /dev/null
> $ ctrl+c
>
> The error message suggests the stream commit (IPC_IA_ALLOC_STREAM, 0x20) IPC
> command failed due to timeout but the msg id field of ipcd read after the timeout is
> also 0x20. It seems to me that the command is success but the host driver does not
> know it for some reason.
>
> 2020-03-15T23:02:06.614151+00:00 ERR kernel: [  852.023766] baytrail-pcm-audio baytrail-pcm-audio: ipc: --message timeout-- ipcx 0x2220 isr 0xf0020 ipcd 0x2220 imrx 0x0
> 2020-03-15T23:02:06.614209+00:00 ERR kernel: [  852.023796] baytrail-pcm-audio baytrail-pcm-audio: ipc: error stream commit failed
> 2020-03-15T23:02:06.614218+00:00 ERR kernel: [  852.023813]  Baytrail Audio: PCM: failed stream commit -110
> 2020-03-15T23:02:06.614225+00:00 ERR kernel: [  852.023832] baytrail-pcm-audio baytrail-pcm-audio: ASoC: baytrail-pcm-audio hw params failed: -110
>
> I add some messages to make the log easier to read. You can check the gerrit link if you
> are interested:
> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2131507
>
> In the test patch I read the SST_IPCD register in sst_byt_irq_thread() twice and found
> the value could be different. The IPC_IA_FREE_STREAM(0x21) seems to be the last IPC
> command sent in the pcm_release of previous arecord command.
>
> [  125.009724] sound pcmC1D0c: snd_pcm_release:
> [  125.009732] baytrail-pcm-audio baytrail-pcm-audio: ipc_tx_message: header 0x8000000000000221 wait 1
> [  125.009760] baytrail-pcm-audio baytrail-pcm-audio: byt_tx_msg: header 0x8000000000000226
> [  125.009803] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x297
> [  125.009823] baytrail-pcm-audio baytrail-pcm-audio: byt_tx_msg: header 0x8000000000000221
> [  125.009872] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x297
> [  125.010442] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x80000000000c2226
> [  125.010456] baytrail-pcm-audio baytrail-pcm-audio: sst_ipc_reply_find_msg: not match, msg header 0x8000000000000221
> [  125.010511] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x8000000000000221
> [  125.011355] baytrail-pcm-audio baytrail-pcm-audio: tx_wait_done: ipc success, header 0x8000000000000221
> [  125.380506] sound pcmC1D0c: snd_pcm_capture_open:
> [  125.380544] sound pcmC1D0c: snd_pcm_capture_ioctl1: INFO
> [  125.380554] sound pcmC1D0c: snd_pcm_capture_ioctl1: PVERSION
> [  125.380561] sound pcmC1D0c: snd_pcm_capture_ioctl1: TTSTAMP
> [  125.380581] sound pcmC1D0c: snd_pcm_mmap:
> [  125.380622] sound pcmC1D0c: snd_pcm_mmap:
> [  125.380648] sound pcmC1D0c: snd_pcm_capture_ioctl1: INFO
> [  125.380717] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380737] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380766] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380779] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380789] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380799] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380808] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
> [  125.380815] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_PARAMS
> [  125.380839] baytrail-pcm-audio baytrail-pcm-audio: ipc_tx_message: header 0x8000000000642220 wait 1
> [  125.380854] baytrail-pcm-audio baytrail-pcm-audio: byt_tx_msg: header 0x8000000000642220
> => write IPC_IA_ALLOC_STREAM message (0x20) to SST_IPCX
> [  125.380931] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x8000000000000221
> => read message reply from SST_IPCD and an IPC_IA_FREE_STREAM(0x21) is returned
> [  125.380942] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: ipcd 0x8000000000602220
> => read SST_IPCD again, this time the message id is what we are expected (0x20)
> [  125.380948] baytrail-pcm-audio baytrail-pcm-audio: sst_ipc_reply_find_msg: not match, msg header 0x8000000000642220
> [  125.681171] baytrail-pcm-audio baytrail-pcm-audio: tx_wait_done: ipc timeout, header 0x8000000000642220
> [  125.681204] baytrail-pcm-audio baytrail-pcm-audio: ipc: --message timeout-- ipcx 0x2220 isr 0x50020 ipcd 0x2220 imrx 0x0
> [  125.681212] baytrail-pcm-audio baytrail-pcm-audio: ipc: error stream commit failed
> [  125.681217]  Baytrail Audio: PCM: failed stream commit -110
> [  125.681223] baytrail-pcm-audio baytrail-pcm-audio: ASoC: baytrail-pcm-audio hw params failed: -110
>
> Regards,
> Brent
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN6PR1101MB21328C54E66082227B9F497A97D50%40BN6PR1101MB2132.namprd11.prod.outlook.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkjGRPfO_%3D2So7HLrVPBr0SbT%2BzjJRYhFEeBxPCZuJoVA%40mail.gmail.com.
