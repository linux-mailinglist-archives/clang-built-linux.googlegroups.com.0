Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBJEEYPVQKGQEUP3IX2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 741ACA9C94
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 10:07:01 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id z12sf1364433iop.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Sep 2019 01:07:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567670820; cv=pass;
        d=google.com; s=arc-20160816;
        b=ORDekEOS3TQQ/tKS1G8b4X4394DH7uWv8CwL2nvd8cGB3Be7cXOIwUuzq5h3SyD/qP
         J/lyLMamLAJXvi+IkL2NwpjLMARtAzxqARsn0drJXloGZ9ean3U0razgkCSMEUHqB56d
         dKo2BsTjIQp65SBpSferEgzkEqXpMmQQix0fd+xU5MpOY4QUfJfsuDidEyfcGomyPoML
         5PZRP75zjuKfoouEEHaWtP+OvKrNbo9SJF6NzY2+xnI/ZcNXTWmJG7s2BqJhebM/oxb9
         APT6DSH7i7yPrXH3W4XM495HVjz1Yw93y8uK/cgzxrPPQ18jKfFNYtJK9Xguw5bhWUHH
         1rLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Gr+YT5DPizgLd9g6rN6GqSh6sKM48NuRLoMjGJyyM6k=;
        b=UEzB94MY+8So4KQOv6oVUckdvc61ucaOdQkaJasmzH06M3GySQAWG07ZHcUqdWfQlD
         Ze2bYq0Y1nuVIi1uawOOV/mFbxztRPhJDciHliFZoutyGqYUCIegYZ0tr1N7+sKkz3UF
         NxCuG9V8hYRXRUCI+PJLF0810lsZMi0e6ssOAH3cJpJsE5SkleVPu3qMe7icLWsdEaIx
         dpo0q7CsVQjuK+VLcJAcufGzVLifoyCcsFTnPeCTX4Nf9WGtQj3ZOQt4Jd20lnNtE2v0
         ZSrs5FgpdAJy696teXrDnKD9inq3nnAXgSs1becDiBN0S2JSxUO40eOl6mo+6dOf67jc
         +SeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gr+YT5DPizgLd9g6rN6GqSh6sKM48NuRLoMjGJyyM6k=;
        b=lR48+r/DKI8W2Y2/E3quAUgNklFA3xFKDg8Tw3AlOV5SI6LIAmol52gVZk5/TFmxLJ
         1XXNTW0NLJk31WOa5392ey/5gtvaUh+1BI3j+cggJ9Fq9sxld1/ZeDeVtFhJWAJEg3VG
         2fMAC8tYA6QkC89AD4YkELWRFGo9E/8lebfvu8GjJXKKnF2FAni789esG0EyjFi0L71V
         hULj78VwsiK81nNH9el2q9eirL3VEKIeif7bmIKA42iJFcCWxn+flWAsG+ToJv6EopLa
         QqjonmIDJXcs+1XinLhmkbsXKLdyEixIQdefopmJmdDEdaObZP7jYB68kdApRiGLTlpr
         qN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gr+YT5DPizgLd9g6rN6GqSh6sKM48NuRLoMjGJyyM6k=;
        b=nfULQCyQ91S3G7/3Yk9yyggMBDBjOpuP9QDcIRc84F/Ggu7Nq0UwYQMuhzvens1Dtc
         UVm6eGzr5xPCxlpcwX4OfWTHbNFHBzGWDgKpXjcspRJy3P0yxu34af8Or4xpInpP/sSq
         7Sp4FM6XE8yxjqmyr9RGREBDpviT+ewsnfkCq2TtAkqo87fC4ChSAdUmPZNAMfXfYd/G
         y8yypKaB/eelDBRUT492wk0iA+QAievhABuJYzs0RgmzmvGrGXq+uBqeY8uYWhd50soz
         t81pJHMGNSVfoLGRehXWsDkwUIMWj95ckXNXJ0WXQFCXuj0hPVRm+iDt3M+tIzjCrPbl
         HNaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX/FlD1sDspQN5Gwkjk2g1DH03W1yh/j2EpeVO/uuO2bvBSy9y5
	zrwTpNsyQUeCheSKTyyYxPY=
X-Google-Smtp-Source: APXvYqzgqquIAF+IWJD4aeeManVgZDvs600asanhWBeU3shYLZHYH+PbV2ZIccawr2CXtfwqTbCY/w==
X-Received: by 2002:a5e:9509:: with SMTP id r9mr2716846ioj.100.1567670820202;
        Thu, 05 Sep 2019 01:07:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8f96:: with SMTP id l22ls435267iol.16.gmail; Thu, 05 Sep
 2019 01:06:59 -0700 (PDT)
X-Received: by 2002:a6b:bcc4:: with SMTP id m187mr2792412iof.16.1567670819856;
        Thu, 05 Sep 2019 01:06:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567670819; cv=none;
        d=google.com; s=arc-20160816;
        b=TGDfzC7EX4aIUm+KNuOuHbHbo4vu3pADMD4HWXFRzFCZ6VGZFjQmjC73hqkDjAG9w/
         fxeNKcvxpQYomzaebBd/tEGelIt1hgthaZR9vIt9sb0cGFBXZR9Fp0bKp9PWPj0I+GQc
         Adcm8VfqsIcLx9nQ30xLiNp4Dbcv2LgkA4jTpbYAfCpvRrixf5TBuZlu/22JMlgISSpt
         /l6ZTl3m08ERTDoGpSBI40f+jt48dXon54gL3NIgFWT5I4oABfcR0MpMefnxWviN9jOB
         A+7Rl1l5ZrYacOUnYFWyqgURSflY5Vq7AVQ+fVm6XuByHl0RVlfNh9S3/6LanSPymlL+
         1yEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=AIQLXRbVyNYLq+ol22DsuLqLcT0DV8DAEZvd/28G2Y8=;
        b=lr7LVYw/4MXfW23H+cnhbSWecmmJXsaQ9sig2iVgRg4btgqMblxDwuI18qYrgNqNGU
         GMS4iiwTRbXFimIno+Q9LU6/yYjfDxvPKhA3Ktw2ZimtGq2zszsF6KTEOYjXIqsy8Rco
         ar5a2h4wQUgf8gwDgJTgFOkv2iyYt17fFBkuGbX2ULFkOdoUYZcoPyvu27XQSwZnpKi5
         Zr38SvgHAwvhF2YAFPSrRRwgohzq/Y3OXLWZ2uQm2P7aebvjVY/RTvg+tOHFj9cPBZqw
         IGbil9ttKL+H3Yoohg0RQEDdbmZdAOpScWTQDAKO+9nlOnI1NpDZPMOvuIwuDhWt6Gwz
         P45w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id n201si95764iod.3.2019.09.05.01.06.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2019 01:06:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id a13so1790089qtj.1
        for <clang-built-linux@googlegroups.com>; Thu, 05 Sep 2019 01:06:59 -0700 (PDT)
X-Received: by 2002:ac8:5306:: with SMTP id t6mr2220290qtn.204.1567670819019;
 Thu, 05 Sep 2019 01:06:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190831162555.31887-1-yamada.masahiro@socionext.com>
 <CAK8P3a0kPFojqAWqXEAcitVMjBA5ABc=rRx=zHMxXat+gCz=gA@mail.gmail.com> <20190904224050.GA82176@archlinux-threadripper>
In-Reply-To: <20190904224050.GA82176@archlinux-threadripper>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 10:06:42 +0200
Message-ID: <CAK8P3a3d-hFFznJAXOjtemV02Zzm_wJW2LefLONRJmobYodmrw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Thu, Sep 5, 2019 at 12:40 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Wed, Sep 04, 2019 at 11:46:45PM +0200, Arnd Bergmann wrote:
> > On Sat, Aug 31, 2019 at 6:26 PM Masahiro Yamada
> > <yamada.masahiro@socionext.com> wrote:
> >
> > FWIW, I just found out I missed a bug that clang failed to warn about
> > because of the  -Wno-format. Apparently gcc warns only about type
> > mismatches that result in incompatible calling conventions (e.g.
> > int vs int64_t) but not smaller types (int, short) that get converted to an
> > int anyway. Passing -Wno-format turns both off.
> >
> >       Arnd
>
> Hi Arnd,
>
> This has been fixed in clang 10.0.0 but this areas has not been updated
> as nobody has sent a patch yet:
>
> https://github.com/ClangBuiltLinux/linux/issues/378#issuecomment-524411147

Ok, that's good. I see that on clang-9, the documentation also
mentions that -Wformat control -Wformat-extra-args -Wformat-invalid-specifier
-Wformat-y2k -Wformat-zero-length -Wnonnull and -Wformat-security.
We can probably turn these all on, regardless. The only warning
that produces output here is -Wformat-security, and only in a couple of
files (number of warnings per file from a few hundred randconfig builds):

   384 kernel/trace/ring_buffer_benchmark.c
    176 samples/trace_printk/trace-printk.c
    174 kernel/debug/kdb/kdb_io.c
    102 arch/x86/kernel/e820.c
     80 fs/btrfs/check-integrity.c
     67 fs/reiserfs/prints.c
     63 fs/xfs/xfs_log_recover.c
     54 fs/quota/dquot.c
     53 lib/test_printf.c
     39 sound/core/sound.c
     28 arch/x86/kernel/cpu/mce/core.c
     21 kernel/trace/preemptirq_delay_test.c
     19 sound/core/seq/seq_clientmgr.c
     17 sound/pci/hda/hda_bind.c
     16 sound/usb/mixer_quirks.c
     16 arch/x86/kernel/cpu/mce/amd.c
     15 net/smc/smc_ism.c
     12 kernel/debug/kdb/kdb_main.c
      8 net/netfilter/nf_conntrack_helper.c
      4 kernel/power/suspend_test.c
      3 sound/pci/rme32.c
      3 net/dsa/dsa.c
      2 sound/pci/rme96.c
      1 sound/soc/sof/intel/hda-codec.c
      1 sound/pci/korg1212/korg1212.c

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3d-hFFznJAXOjtemV02Zzm_wJW2LefLONRJmobYodmrw%40mail.gmail.com.
