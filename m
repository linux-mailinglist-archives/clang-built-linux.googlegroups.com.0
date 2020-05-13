Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWMH6H2QKGQED7ER63I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DAA1D1E6C
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 21:00:43 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id w4sf247297iol.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 12:00:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589396441; cv=pass;
        d=google.com; s=arc-20160816;
        b=kd5cyHbx3dgEndcQUcuCxjeKBMpb/WEGxHHfT1jp+GQY4Yf/y/9qxbfyU+SHK+7CNd
         exVC1XQNP10lhu5weKFjM4uoe42CWnaBp9PeB7h577txYvSzRT5tN9Qgg2P5Lo8zQgEo
         Brsa9oEoAPqTCC5dXL7yGOUukEZWbj1rdvxBM5hwFJVH9wz4mp1HcKnoCNbrnfEtE2Sm
         cC2r3vn16NxKjQwy2cSfFOshMvWQw+7VtJIELqjWUrC4YkQ9h9HOHL34ksijdczcTwpD
         1DsERKGDVKlx90Tt8EkLit2Z70QokOOZ0d6Zz32LdgM1Nstb7flY29ZgGsz/vseyOgNB
         SxCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TChJfF/vJps7XYk2QMW/m90L7SIsm8ug2ETfGImJzAw=;
        b=AYDeiHbmGaSJrBHijLzxmdeHnGF6cO7zIs40oKdbLTigqEpMeB7DWv2lAg2J2a4BfE
         27sZ2a2hsLYtVvSUZeW9MrjxBcINJDHRHVTiZFRbavzB3CAeNqp83T80m4s+Q49DWzUN
         pGuxVKkkLGP519xhO8ndgje1HG9trNPqXy1xvrHbfIB8FCzRAIEkve4E2gdN055TZYZb
         uGZM509XbDe/3IoWfuVznIUUyzxQBv1pO8YDZw71WXx5oxo2b3nJdrh6+Hm6aYaWw29A
         HQ1BmYzbqNA3WmtIcg94ZdLDL3BX2uFyl8HdMLsI0r5UE5kuR/v11YxwbP0UbPtsY/6V
         gVMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rq8aGCsh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TChJfF/vJps7XYk2QMW/m90L7SIsm8ug2ETfGImJzAw=;
        b=MomRa5iEizEtEq50Zl575vN/YqVT5nZlCLPiRsFoCMPhD+5Srt7RvbSaRcHN+JuhkS
         pSrHukdSKNoNahwD234LRMZ07/LYPFFnxUh+NwuQq4ugglx1+7L5VWwT7yWzLtHBQA4l
         I86afQ351EcJ6DzuxTZ1L1KtzI3ewl1xhqoLISHT93DnvViQPiJLmymxmW8sEefiPv1v
         6F5Xw9RHq+1EdDIKhwj0MGAaUHbxZFHIlZVtCbEVoyP/NkF+h1A+EqW9wNJbbqMRep89
         K4NTbRX4dIZBKVpkWumnrgHlx/W/MoAtlLIBuoH71kg4BVqMooypsNASSXlxakEGqIps
         cgRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TChJfF/vJps7XYk2QMW/m90L7SIsm8ug2ETfGImJzAw=;
        b=mhIigiF+3EIy9IZ1u7LQCjHetrUk44e94iRbrnLntUhwSZghl+/DcznJyIGFEI0Uxh
         /N7qn+iBQgmo9sQ1oSLHV9ZcSMiLeYvbo3nt7gneQ4Fs/nYncm3IGlHQL8Sh0xmaPl1O
         aN3kPbD58ahlpE68ESyuAnz/oJe0CVkqllpU9BFMoYxxi2rOtLeFR1lleXdSkRsd2Wh4
         QbQZhqN+ZxOUtLowa00O7WDlSIefwgCEH6pZ4RBeBWIib8zEbYmN18e74CgAeEp5liu9
         MD9xN4a2nzBwSUBUzCwy2TIkMk6Vl7bdvsLBjyzsxclyuBWsXtkMEGxK+eLFEKK4eKwB
         4kxw==
X-Gm-Message-State: AOAM532ALORVWcYKvJoAPWeWFK9Wspcoi89WhZD/s9cl5zzyasCoZWc6
	9332FiDd1Z4x6/4j/MvQzlg=
X-Google-Smtp-Source: ABdhPJzHHlEjzdx8qV2qw6a5GY7Ix0yIQw9d9PwK+5VWkaxQi18tcBs1+j3l2/2IZkaQAeuBbnN3yw==
X-Received: by 2002:a6b:7009:: with SMTP id l9mr633689ioc.158.1589396441357;
        Wed, 13 May 2020 12:00:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:d516:: with SMTP id e22ls69450iom.3.gmail; Wed, 13 May
 2020 12:00:41 -0700 (PDT)
X-Received: by 2002:a5d:9ecb:: with SMTP id a11mr610469ioe.115.1589396440960;
        Wed, 13 May 2020 12:00:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589396440; cv=none;
        d=google.com; s=arc-20160816;
        b=iOWHPUK5vMySPWLeYTrWJccRacJTQsoWtG78XpFxe1Eb9yy2BvE8QXRvBCm2DvQ6jj
         VxFb8sM95oHPd8irQ+BNtZ+DDbmigVl0e3aLNd22DDHf4JZYvmcKsuVwAShWW4lHo5Ks
         Pn4C8uoH1lkZChDNphUU6oUR1e5HgRpCumlj3vV8tKfxCzXXIQTL/gMzOQ++42tZGRo9
         57PQEiE3Fpp7RP+hfTgvS/0L2Ui6A5TXMQ4DJdTCbYAoRC00+2HE3f+q/+JMw9ihnFOI
         rVbDUfuavISXJBC4GI39qyd8lrGLrxC75iSgYPAYWFzAlNqN0SvKTwUHisMpN5DVjrf5
         JslA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=J7twM4zRYFpQBLZ3sUs+Kg98wBvx8UDi+wQlseLaMQc=;
        b=adNooK8C8OxswyJiFi4Aosap6FNBEal7trl5Nm3GboVXaVoceJ3o2ocFNhLWt+6FD9
         9q/zJamlsvo0INI5WziCPz0Wi+ergUgCQVUAfusZYuxAlhka8ubxRvVSN4jgAniWu+A8
         ox81XIcoOU/30cuplH4wPSDk/zLsOkfK7hjAV5rkciVzJd37/Q/7T3LpjATaSXcyHEe4
         84GZ8sJVX71+3XTXmb/+lr6l2Qg6CmfdqnbSeoeBLvnCQTUSJTDfMKROdguAeSVZ0iRS
         k6J7U97PPVigELBaDCg0v5a8wLLuQMgIGGyqNSqzPTIu0kb6jz/6WE9Liyr2zO8ydTBV
         /l0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rq8aGCsh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id k8si55826ilq.3.2020.05.13.12.00.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 May 2020 12:00:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id u15so200115plm.2
        for <clang-built-linux@googlegroups.com>; Wed, 13 May 2020 12:00:40 -0700 (PDT)
X-Received: by 2002:a17:90b:2302:: with SMTP id mt2mr30435954pjb.25.1589396440044;
 Wed, 13 May 2020 12:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
 <20200505004738.ew2lcp27c2n4jqia@google.com> <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
 <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com> <20200512200114.64vo5lbl7wk2tzxk@google.com>
In-Reply-To: <20200512200114.64vo5lbl7wk2tzxk@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 May 2020 12:00:29 -0700
Message-ID: <CAKwvOdnArcsqusvmMDUJyTjVhkOufJZoRHxg-ARDfPhfjNj_JA@mail.gmail.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
To: Fangrui Song <maskray@google.com>, nickc@redhat.com, "H.J. Lu" <hjl.tools@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nick Desaulniers <nick.desaulniers@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rq8aGCsh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Tue, May 12, 2020 at 1:01 PM Fangrui Song <maskray@google.com> wrote:
>
> >Fangrui, I wasn't able to easily find what version of binutils first
> >added support.  Can you please teach me how to fish?
>
> I actually downloaded https://ftp.gnu.org/gnu/binutils/ archives and
> located the sources... I think an easier way is:
>
> % cd binutils-gdb
> % git show binutils-2_26:./gas/as.c | grep compress-debug-sections

This assumes you knew to look at the binutils-2_26 tag, which is
putting the cart before the horse. ;)

I guess:
$ git log gas/as.c
/compress-debug-sections
commit 19a7fe52ae3d ("Make default compression gABI compliant")
looks related
$ git describe --contains "19a7fe52ae3d" | sed 's/~.*//'
users/hjl/linux/release/2.25.51.0.4
so it landed in 2.25.51.0.4.

+ Nick, H.J.
I'm unfamiliar with the git tag conventions of binutils.  Does a patch
that landed in 2.25.51.0.4 mean it shipped in the official 2.25
release, or 2.26 release?  Specifically, commit 19a7fe52ae3d.

> --compress-debug-sections[={none|zlib|zlib-gnu|zlib-gabi}]\n\
> ...
>
> GNU as 2.25 only supports --compress-debug-sections which means "zlib-gnu" in
> newer versions.
>
> Similarly, for GNU ld:
>
> % git show binutils-2_26:./ld/lexsup.c | grep compress-debug-sections
>    --compress-debug-sections=[none|zlib|zlib-gnu|zlib-gabi]\n\
>
> (I have spent a lot of time investigating GNU ld's behavior :)
>
> >Another question I had for Fangrui is, if the linker can compress
> >these sections, shouldn't we just have the linker do it, not the the
> >compiler and assembler?  IIUC the debug info can contain relocations,
> >so the linker would have to decompress these, perform relocations,
> >then recompress these?  I guess having the compiler and assembler
> >compress the debug info as well would minimize the size of the .o
> >files on disk.
>
> The linker will decompress debug info unconditionally. Because
> input .debug_info sections need to be concatenated to form the output
> .debug_info . Whether the output .debug_info is compressed is controlled
> by the linker option --compress-debug-sections=zlib, which is not
> affected by the compression state of object files.
>
> Both GNU as and GNU ld name the option --compress-debug-sections=zlib.
> In a compiler driver context, an unfamiliar user may find
> -Wa,--compress-debug-sections=zlib -Wl,--compress-debug-sections=zlib
> confusing:/

The kernel uses the compiler as the driver for out of line assembly,
as they are all preprocessed first.  Most out of line assembly in the
kernel uses the C preprocessor to #include headers that share #defines
of common constants shared between C and asm.  #ifdef __ASSEMBLY__ is
used frequently in these headers.  But for the linker, the linker
itself is invoked as the driver, though there are a few
inconsistencies we've cleaned up or still have to.

>
> >Otherwise I should add this flag to the assembler invocation, too, in
> >v2.  Thoughts?
>
> Compressing object files along with the linked output should be fine. It
> can save disk space. (It'd be great if you paste the comparison
> with and w/o object files compressed)
>
> Feel free to add:
>
> Reviewed-by: Fangrui Song <maskray@google.com>

Thanks, will add that to v2.

>
> >I have a patch series that enables dwarf5 support in the kernel that
> >I'm working up to.  I wanted to send this first.  Both roughly reduce
> >the debug info size by 20% each, though I haven't measured them
> >together, yet.  Requires ToT binutils because there have been many
> >fixes from reports of mine recently.
>
> This will be awesome! I also heard that enabling DWARF v5 for our object
> files can easily make debug info size smaller by 20%. Glad that the
> kernel can benefit it as well:)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnArcsqusvmMDUJyTjVhkOufJZoRHxg-ARDfPhfjNj_JA%40mail.gmail.com.
