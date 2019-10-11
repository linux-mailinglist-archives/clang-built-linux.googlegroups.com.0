Return-Path: <clang-built-linux+bncBCOOP5GPTQDRB6HAQHWQKGQELDT7PPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F79D3F2F
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 14:07:20 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id j125sf4008450wmj.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 05:07:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570795640; cv=pass;
        d=google.com; s=arc-20160816;
        b=k3YMhpHCVSwGuNYM33CcBy0SwvfU97AQO+WMl2mOOROMTmlHhKLTdkzDm+4nNMazql
         eG2YILAtyHDCBM2nQf/L8XHIinfmGoBf3GjixHfp4+mf8lyqrlM0wSuUEpw+D99yhRUa
         Qbpv1BiUnqrmmtjiJytIz00mdaysQPl7akSVXs3mhABW0uTtvi1tHEErpONGWMcQeObN
         GZ7bfuzJ01PmYdOknncqvHCFL11VmDW8mUrjflGFftgLLwzI0OfKJZIuWaC4919DJG7C
         UgfiK6uK5+mM3FzcDxfVdsu1zyk03rNNqTLhLtGgoWyl3gCqKWB2qkKUx+j1+3TGtmn6
         MMbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VVs4W5MSoWNH8BdiGtLAaUsQeN6zTBRL/GnLR9Q4m/o=;
        b=Ft9BshMbdDJpPVUqIlBKET+vSaw64THGXQoXtFKm1a9/kKGIACC4T4l9+YFsYXIz7L
         c5WXnbZgyKaolaGcauNGjl7cUAksrDq/Ou/PhqFSh88E21Qy7stXOhB3JmgMrvYZBLft
         E/feu+ZcUHNn7Ac5XgZYBCLQ8v5Lodu98cVirv6nbAwc1Sdx5lizUzZaFVD04Aqmh/ih
         VOPMPJh1hamH9hprmdnveG/yzUd1N1HLDzz3ArLLMLbZ5w2IhnWXo343PAc6xvhtoxXt
         O8MqKzC1I7Br6vZKLmfr0Xy5/BH59d4uMX8nARRIZ+cdygspOO4Uts1ANxTorLjs6gC8
         Z2PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DbiKHYxS;
       spf=pass (google.com: domain of ilias.apalodimas@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ilias.apalodimas@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VVs4W5MSoWNH8BdiGtLAaUsQeN6zTBRL/GnLR9Q4m/o=;
        b=eLdpNpbZ4kE8y93fvmNv640xbS7/5UfpN1+MUSMiriAAikIZou7N6EEcI9JN1zkIZp
         jdtomAPua39ff9XyMq8S4hZ+DHs66KzWd66Jbbg5bEbK/he3KSlh/3F8VnIGUrXnDnyk
         lfctPa3nawG6VfPhdqQeJYk+BPLKU57fF4gc4UpJkVF8T9V2V3wttuW/Op6y+AJUhsIm
         1MKZCjVAnnALitZYVkOtBPbBSnAnAG2VaZKR8jbvI005plLmbExzvuvHISxCCEK1dd9i
         +Gt09+d5iU8N8psjMqGn3ENVnm5K1eIgm61nwiFJUNd3uDTYOzR1RMiyPnsuo8nbJGsj
         tb3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VVs4W5MSoWNH8BdiGtLAaUsQeN6zTBRL/GnLR9Q4m/o=;
        b=G7qYIxdM7pVtfM9LoRxhHlDnQ5NGI2R4vZKUe/F/Oe1gxbbC3RokAKMPmo+8EaYpHe
         RIfy0kQgAf772UpQ5MzbFsJ30AIFZn26JsneX0j9V2VAsPf70XuiUxLFvZSpIFMbpLn1
         wA9HgHqReKMOaqnjehgnOkvK/OraLL5V1lfJJAux2TvbjaG5MgtNbdlEFWfjQFqOsxcT
         4xsPDD6prKbXnsI16Y8Z4XRjrjFkqlYTp8gElh3W+06z0+eqPa+dSF96FmxxteIN+isU
         ZQd4bvHNeTYpx+X/L0YzuY1FHrlgNrkDfoWxhw3YdKiUrg6e8Ttvc3NabIUCj4vRbXG5
         tZ5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWPBr8dqBdsxdPArn5QDhrYMkpCbNyr3+FCtqt2uUF6X9wKJw1y
	E58YnOLjGhJpaxjxBKGB0GY=
X-Google-Smtp-Source: APXvYqwa5rJR7JehQhSktKqARH4Dm1YzwaWVvqnYcD5OCGkMKzjjz0bkuv9iLUua+cXn8vWowBvnQw==
X-Received: by 2002:adf:e38a:: with SMTP id e10mr1559643wrm.348.1570795640558;
        Fri, 11 Oct 2019 05:07:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d9:: with SMTP id s25ls2756303wmh.4.gmail; Fri, 11 Oct
 2019 05:07:20 -0700 (PDT)
X-Received: by 2002:a1c:1d41:: with SMTP id d62mr3108823wmd.143.1570795639982;
        Fri, 11 Oct 2019 05:07:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570795639; cv=none;
        d=google.com; s=arc-20160816;
        b=wSt3qU4TXl/vgArhJSmCGcVrpohygG29DhgPMhVcfHdvqzKq2L1WKIJI75zOY8GNKx
         g+HwgZ1QrXfCEw2FXXdsB2q2gJaOkgbM2+B7BwzZkSXLO5uAPo6pR9sTkNJHzBSc/X4r
         +/e6Hdp1DfQ1AU3N6bVYV0R18yFGqSyC1c+F9UG80mXFFQTrNf2AVbaI7W/n9/SKtjxa
         TTYpPt2z2ddkzOgShRjQfmVyUjvGR5/ODXeSUISbCjdAuQzyvmA+uB87tBPhnA71aLK0
         qlTp+1FOBMBo3Wi/oThnMvs8G0AX1h3movTczpcM5OIWUNsb2M9xsh9xIBlYcpphzou7
         7QhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DXHRllLSJ/1e62jK/WoBiAvlasUoqg+VrQjUmvDHO/E=;
        b=Xh5Ut97Hd6CfrfMZhs5wcTeEqEro6VvqbVgKLAJ5tc2nvjA5qeKwWkt4j/cWmERvBW
         bFLyq806pht+tkQLq1A5yRwBGK4Wc/KBpg2qtt02hMkwUaGXORUmZ0NILVdBJaqG3xWp
         G5h4dEPdloKRyJ710vt3LzfyhjvUiuYC9cqZmsjR504TZC+pC1wH24uMdgX567V5Sihh
         gRtnNOcb0s9vAMFGP1JplLIW/4rCXRTcclvyxddaRjpPSRi6lxX69iCIEPjJnlf13wBI
         ak8I0L44CWFMHHd+SLPPHlDnPwOwe70UXm1QjKq6tXx900c8LbLit6XLXlMXMkWwTT9Z
         EG7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DbiKHYxS;
       spf=pass (google.com: domain of ilias.apalodimas@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ilias.apalodimas@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q185si376351wme.1.2019.10.11.05.07.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 05:07:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilias.apalodimas@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id n14so11612864wrw.9
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 05:07:19 -0700 (PDT)
X-Received: by 2002:a5d:4108:: with SMTP id l8mr12459949wrp.391.1570795639449;
        Fri, 11 Oct 2019 05:07:19 -0700 (PDT)
Received: from apalos.home (ppp-94-65-93-45.home.otenet.gr. [94.65.93.45])
        by smtp.gmail.com with ESMTPSA id w9sm13356785wrt.62.2019.10.11.05.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 05:07:18 -0700 (PDT)
Date: Fri, 11 Oct 2019 15:07:15 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
Subject: Re: [PATCH v5 bpf-next 00/15] samples: bpf: improve/fix
 cross-compilation
Message-ID: <20191011120715.GA7944@apalos.home>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: ilias.apalodimas@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=DbiKHYxS;       spf=pass
 (google.com: domain of ilias.apalodimas@linaro.org designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ilias.apalodimas@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, Oct 11, 2019 at 03:27:53AM +0300, Ivan Khoronzhuk wrote:
> This series contains mainly fixes/improvements for cross-compilation
> but not only, tested for arm, arm64, and intended for any arch.
> Also verified on native build (not cross compilation) for x86_64
> and arm, arm64.
> 
> Initial RFC link:
> https://lkml.org/lkml/2019/8/29/1665
> 
> Prev. version:
> https://lkml.org/lkml/2019/10/9/1045
> 
> Besides the patches given here, the RFC also contains couple patches
> related to llvm clang
>   arm: include: asm: swab: mask rev16 instruction for clang
>   arm: include: asm: unified: mask .syntax unified for clang
> They are necessarily to verify arm 32 build.
> 
> Also, couple more fixes were added but are not merged in bpf-next yet,
> they can be needed for verification/configuration steps, if not in
> your tree the fixes can be taken here:
> https://www.spinics.net/lists/netdev/msg601716.html
> https://www.spinics.net/lists/netdev/msg601714.html
> https://www.spinics.net/lists/linux-kbuild/msg23468.html
> 
> Now, to build samples, SAMPLE_BPF should be enabled in config.
> 
> The change touches not only cross-compilation and can have impact on
> other archs and build environments, so might be good idea to verify
> it in order to add appropriate changes, some warn options could be
> tuned also.
> 
> All is tested on x86-64 with clang installed (has to be built containing
> targets for arm, arm64..., see llc --version, usually it's present already)
> 
> Instructions to test native on x86_64
> =================================================
> Native build on x86_64 is done in usual way and shouldn't have difference
> except HOSTCC is now printed as CC wile building the samples.
> 
> Instructions to test cross compilation on arm64
> =================================================
> #Toolchain used for test:
> gcc version 8.3.0
> (GNU Toolchain for the A-profile Architecture 8.3-2019.03 (arm-rel-8.36))
> 
> # Get some arm64 FS, containing at least libelf
> I've used sdk for TI am65x got here:
> http://downloads.ti.com/processor-sdk-linux/esd/AM65X/latest/exports/\
> ti-processor-sdk-linux-am65xx-evm-06.00.00.07-Linux-x86-Install.bin
> 
> # Install this binary to some dir, say "sdk".
> # Configure kernel (use defconfig as no matter), but clean everything
> # before.
> make ARCH=arm64 -C tools/ clean
> make ARCH=arm64 -C samples/bpf clean
> make ARCH=arm64 clean
> make ARCH=arm64 defconfig
> 
> # Enable SAMPLE_BPF and it's dependencies in config
> 
> # The kernel version used in sdk doesn't correspond to checked one,
> # but for this verification only headers need to be syched,
> # so install them (can be enabled in config):
> make ARCH=arm64 headers_install
> 
> # or on SDK if need keep them in sync (not necessarily to verify):
> 
> make ARCH=arm64 INSTALL_HDR_PATH=/../sdk/\
> ti-processor-sdk-linux-am65xx-evm-06.00.00.07/linux-devkit/sysroots/\
> aarch64-linux/usr headers_install
> 
> # Build samples
> make samples/bpf/ ARCH=arm64 CROSS_COMPILE="aarch64-linux-gnu-"\
> SYSROOT="/../sdk/ti-processor-sdk-linux-am65xx-evm-06.00.00.07/\
> linux-devkit/sysroots/aarch64-linux"
> 
> Instructions to test cross compilation on arm
> =================================================
> #Toolchains used for test:
> arm-linux-gnueabihf-gcc (Linaro GCC 7.2-2017.11) 7.2.1 20171011
> or
> arm-linux-gnueabihf-gcc
> (GNU Toolchain for the A-profile Architecture 8.3-2019.03 \
> (arm-rel-8.36)) 8.3.0
> 
> # Get some FS, I've used sdk for TI am52xx got here:
> http://downloads.ti.com/processor-sdk-linux/esd/AM57X/05_03_00_07/exports/\
> ti-processor-sdk-linux-am57xx-evm-05.03.00.07-Linux-x86-Install.bin
> 
> # Install this binary to some dir, say "sdk".
> # Configure kernel, but clean everything before.
> make ARCH=arm -C tools/ clean
> make ARCH=arm -C samples/bpf clean
> make ARCH=arm clean
> make ARCH=arm omap2plus_defconfig
> 
> # The kernel version used in sdk doesn't correspond to checked one, but
> # headers only should be synched,
> # so install them (can be enabled in config):
> 
> make ARCH=arm headers_install
> 
> # or on SDK if need keep them in sync (not necessarily):
> 
> make ARCH=arm INSTALL_HDR_PATH=/../sdk/\
> ti-processor-sdk-linux-am57xx-evm-05.03.00.07/linux-devkit/sysroots/\
> armv7ahf-neon-linux-gnueabi/usr headers_install
> 
> # Build samples
> make samples/bpf/ ARCH=arm CROSS_COMPILE="arm-linux-gnueabihf-"\
> SYSROOT="/../sdk/ti-processor-sdk-linux-am57xx-evm-05.03\
> .00.07/linux-devkit/sysroots/armv7ahf-neon-linux-gnueabi"
> 
> 
> Based on bpf-next/master
> 
> v5..v4:
> - any changes, only missed SOBs are added
> 
> v4..v3:
> - renamed CLANG_EXTRA_CFLAGS on BPF_EXTRA_CFLAGS
> - used filter for ARCH_ARM_SELECTOR
> - omit "-fomit-frame-pointer" and use same flags for native and "cross"
> - used sample/bpf prefixes
> - use C instead of C++ compiler for test_libbpf target
> 
> v3..v2:
> - renamed makefile.progs to makeifle.target, as more appropriate
> - left only __LINUX_ARM_ARCH__ for D options for arm
> - for host build - left options from KBUILD_HOST for compatibility reasons
> - split patch adding c/cxx/ld flags to libbpf by modules
> - moved readme change to separate patch
> - added patch setting options for cross-compile
> - fixed issue with option error for syscall_nrs.S,
>   avoiding overlap for ccflags-y.
> 
> v2..v1:
> - restructured patches order
> - split "samples: bpf: Makefile: base progs build on Makefile.progs"
>   to make change more readable. It added couple nice extra patches.
> - removed redundant patch:
>   "samples: bpf: Makefile: remove target for native build"
> - added fix:
>   "samples: bpf: makefile: fix cookie_uid_helper_example obj build"
> - limited -D option filter only for arm
> - improved comments
> - added couple instructions to verify cross compilation for arm and
>   arm64 arches based on TI am57xx and am65xx sdks.
> - corrected include a little order
> 
> Ivan Khoronzhuk (15):
>   samples/bpf: fix HDR_PROBE "echo"
>   samples/bpf: fix cookie_uid_helper_example obj build
>   samples/bpf: use --target from cross-compile
>   samples/bpf: use own EXTRA_CFLAGS for clang commands
>   samples/bpf: use __LINUX_ARM_ARCH__ selector for arm
>   samples/bpf: drop unnecessarily inclusion for bpf_load
>   samples/bpf: add makefile.target for separate CC target build
>   samples/bpf: base target programs rules on Makefile.target
>   samples/bpf: use own flags but not HOSTCFLAGS
>   samples/bpf: use target CC environment for HDR_PROBE
>   libbpf: don't use cxx to test_libpf target
>   libbpf: add C/LDFLAGS to libbpf.so and test_libpf targets
>   samples/bpf: provide C/LDFLAGS to libbpf
>   samples/bpf: add sysroot support
>   samples/bpf: add preparation steps and sysroot info to readme
> 
>  samples/bpf/Makefile                          | 164 ++++++++++--------
>  samples/bpf/Makefile.target                   |  75 ++++++++
>  samples/bpf/README.rst                        |  41 ++++-
>  tools/lib/bpf/Makefile                        |  23 +--
>  .../bpf/{test_libbpf.cpp => test_libbpf.c}    |  14 +-
>  5 files changed, 218 insertions(+), 99 deletions(-)
>  create mode 100644 samples/bpf/Makefile.target
>  rename tools/lib/bpf/{test_libbpf.cpp => test_libbpf.c} (61%)
> 
> -- 
> 2.17.1
> 

For native compilation on x86_64 and aarch64 

Tested-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011120715.GA7944%40apalos.home.
