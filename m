Return-Path: <clang-built-linux+bncBDYJPJO25UGBB27N5KCQMGQEEEMXXOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D2F39C3E1
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 01:27:40 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id o5-20020a05651c0505b02900e5a95dd51esf4927050ljp.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 16:27:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622849260; cv=pass;
        d=google.com; s=arc-20160816;
        b=0T+2csIhMB5Pt7/IR/IpVIzNuVJFJO0cVTpRLnngERp5nHDwmCY+T7vBahZXzLw/qW
         3BjiD3d+f8gL50jy9TjC1RMJ4bQQMUXyu2O9tvROWwaVAhJ60seFvfsG+TEqEkkfhMVC
         ayxSoFYf/FBrTKI7z2JKh2yiJWuunckXjK+fdbCdDLuYiq3WrxpVPHKSZZmY23O+E8d2
         8EwEP1IT9LXpQ4V4Ywf833E54eb2kXEzxgQW33Ssc4Qx0tmoK2QY1OIMesxAu3Eu+zzR
         ZEroFef+VdGKHkC/XBcqSGPmusrlsWU8/Q5cGPlCKaRfWZAyEBO1QLADRnVriMop6mdq
         x9mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GCSHORWG0YLprn0DLzp5HFxjByRSIeRYT8ox4ItcaO8=;
        b=tOm7PMGFrNFjR50aC2xlfmyE8Ko2YiS8EPuqcPP/UB/2EdTEuYVgI+QFee/UZ1s2kO
         GqhKFh4QeW7xVtdMybrjh+RMkVXrm3VJwOlTJ0o93pSZZTVR9w9dIJY+A726xL+ttrNG
         hvOFvZ3fTia4Yn1udaqwZJHkdFDVr+Sl6uJR38ZTuXpoW5A5fBnmSzeVlAnVn+mXU9a+
         9p9LsyvksAFiUaXaxksOmR7KBE/Y4dLWzp9zybg42lJcnNGkweMvd0voh79pUCP8qs+w
         ZgSt/vfvN9kRs2rlOpTzLi87JkD89rbMAxb5hjzIalnOVJxToCwKl8RWbnXIw3dRvfib
         ZeLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dg5Sc1Fg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GCSHORWG0YLprn0DLzp5HFxjByRSIeRYT8ox4ItcaO8=;
        b=k6XJDWkAUa+ZZzKwgORgAOrSXs93Q1jlWtxKGHUx48JEIORH1ZpvCuRKoqFahai28e
         WjVhJYBToEZAllMLjuddsYn+4mg4JCo6sgVHjCd9bf3pK/+nGWwnC/t1xq0BHChTtL5p
         66u6fWjmVg4CClnJB9bXkKe8tsqzUaooF6iVi4HoZrp/XzwN8MheBkcszSk173jYAGTs
         Wm/GZLS74H63/tuAn+5/vehniuGvCwzNCEOyJj6fTj/eYjeBbriyarQrF/KrzTAR6rWs
         GJ41lGbwBQWDZ0M9Rqiq1VV9cETzgJzFoMSMysl6KqXHpRBfKr0VZrQrjsm5JOY0R8uQ
         uELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GCSHORWG0YLprn0DLzp5HFxjByRSIeRYT8ox4ItcaO8=;
        b=jzZz59Zi7H/1unV01yDgHg/pqW6XWGR5cWYeDxT2/2u6wSWBlxEbv3+lbWgb8IJ12L
         RY8Fzqlwp9pvPrmKZ6iSGKfWOSpl9s85wLfZpYjLKVcJb3g9r5ELmRCd1TJIAJi+QdoS
         uZguKDNYFk5BY+XVPr6jkWaay5qiaNGrlMQZ4Gf1LFCfzvQQllxVbq/IgMRtekVPyTcz
         UzZsuVgCm890xVhSUVs8qkfLvnvZnbUj4May3luYLVhOgPBxKFS1jnRAcUAcV13KwY99
         i2iMbmTpFSzoxH7XuHyalOIdPmiY2zVbZr8ZbgH8fLsbhafUDRMoywtMILXXW3QH9VQf
         IItg==
X-Gm-Message-State: AOAM530JvHCHHShaKrC0gz8o0xfKmQ8kh3wZoPx2wfK/6nh672PbOhKw
	0pplf6aFGQB/ThI7M1WLaLs=
X-Google-Smtp-Source: ABdhPJzPPO7OIbAarZojBN2LltgBndcE+H5ip95Z9i3IR0LpGZkvXkrXuw5gaHzUYdjkzXwMdxIcBQ==
X-Received: by 2002:ac2:4e05:: with SMTP id e5mr4193370lfr.613.1622849260018;
        Fri, 04 Jun 2021 16:27:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls1156934lfv.2.gmail; Fri,
 04 Jun 2021 16:27:39 -0700 (PDT)
X-Received: by 2002:ac2:569a:: with SMTP id 26mr4288925lfr.257.1622849258963;
        Fri, 04 Jun 2021 16:27:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622849258; cv=none;
        d=google.com; s=arc-20160816;
        b=atO9KGpowSfHfjY//SuiekxGs9u5p5WlmTvyphDEhUKUqP0JQVqBatUvF0JUVIYq61
         lZCOqSnPYpPKIRSz1wuMk7YeirfBiiHAc7dhNHn5d/aAQh9uJfGVQ+N3RdeUV/5xiHXI
         uE1nW7RLNj41FERWao1FBoKxsNlyFgeiCcAI9NFo36zBa3vT79E/lTUTvqXMFb5V+/jY
         ia9j4jcAtMKD1Dki8ElyIMz+UnKR38oUm/mM0tg5+yAZ/idjykvfdnbx13badwpmoc+C
         rYoVNKkZ9/E3wmNDF4QqygnWR+ARF7TKUwqcLMXdBuSmZDVOTyyr6Y1Hy5wEd5NA3IWe
         R+ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7anXLdFX+ZgbpqbGjfcU0VDRvEPB4cOmvxPC9Qde3gE=;
        b=IhRcC5EVsucJGDln9QUUDRnhRMeRBDsecu1Yli35wii3fpnAnwMRkIM5Yru3qqdePs
         fVv3V0YBqJSKUr4jsjNL5yxfAIBLHG193jeIlvrO+lksUmTY6AC/tgYUSm11ignkwezu
         y+D+rJ+MnFa8RdlX+fPvw3T0IpsFonA4GSbNbknCfLi77exa/KOzhEWlbdmcrZ3JNr6y
         93sbxf4txzJNFJQ6PCQAvbpskvDr2ciXIUrg3LPRfRjsg+EzuD7kB5g1H88rQJbSVtC+
         A8x8Ks5sW82/2l7v8IVDLWvt2b2IT90cHKtlfVKV6KvWzKUXUbjYZ7I+6Nil9prdDrRJ
         DGnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dg5Sc1Fg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id b39si268343lfv.1.2021.06.04.16.27.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 16:27:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id r198so13071482lff.11
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 16:27:38 -0700 (PDT)
X-Received: by 2002:a19:f706:: with SMTP id z6mr4188361lfe.122.1622849258457;
 Fri, 04 Jun 2021 16:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
In-Reply-To: <20210604205018.2238778-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 4 Jun 2021 16:27:26 -0700
Message-ID: <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com, 
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>, lb@semihalf.com, 
	LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com, rad@semihalf.com, 
	upstream@semihalf.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <nathan@kernel.org>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dg5Sc1Fg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Fri, Jun 4, 2021 at 1:50 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> (Manually replying to https://lore.kernel.org/lkml/CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com/)
>
> Hi Peter,
> We're also tracking 2 recent regressions that look like they've come from this
> patch.
>
> https://github.com/ClangBuiltLinux/linux/issues/1384
> https://github.com/ClangBuiltLinux/linux/issues/1388
>
> (Both in linux-next at the moment).
>
> The first, it looks like a boot failure. The second is a warning from the
> linker on a kernel module; even readelf seems unhappy with the results of the
> output from objtool.
>
> I can more easily reproduce the latter, so I'm working on getting a smaller
> reproducer. I'll let you know when I have it, but wanted to report it ASAP.

Sent a pretty big attachment, privately.  I was able to capture the
before/after with:

$ $ echo 'CONFIG_GCOV_KERNEL=n
CONFIG_KASAN=n
CONFIG_LTO_CLANG_THIN=y' >allmod.config
$ OBJTOOL_ARGS="--backup" make -kj"$(nproc)" KCONFIG_ALLCONFIG=1
LLVM=1 LLVM_IAS=1 all

It looks like

$ ./tools/objtool/objtool orc generate  --module  --no-fp
--no-unreachable  --retpoline  --uaccess  --mcount
drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o; ld.lld -r -m elf_x86_64
-plugin-opt=-code-model=kernel -plugin-opt=-stack-alignment=8
--thinlto-cache-dir=.thinlto-cache -mllvm -import-instr-limit=5
-plugin-opt=-warn-stack-size=2048 --build-id=sha1  -T
scripts/module.lds -o drivers/gpu/drm/amd/amdgpu/amdgpu.ko
drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o
drivers/gpu/drm/amd/amdgpu/amdgpu.mod.o

is producing the linker error:

ld.lld: error: drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o:
SHT_SYMTAB_SHNDX has 79581 entries, but the symbol table associated
has 79582

Readelf having issues with the output:
$ readelf -s amdgpu.lto.o.orig
<works fine>
$ readelf -s amdgpu.lto.o
readelf: Error: Reading 73014451695 bytes extends past end of file for
string table
$ llvm-readelf -s amdgpu.lto.o
llvm-readelf: error: 'amdgpu.lto.o': unable to continue dumping, the
file is corrupt: section table goes past the end of file

`file` having issues:
$ file drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o
drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o: ELF 64-bit LSB relocatable,
x86-64, version 1 (SYSV), no section header

for comparison:
$ file ./drivers/spi/spi-ath79.lto.o
./drivers/spi/spi-ath79.lto.o: ELF 64-bit LSB relocatable, x86-64,
version 1 (SYSV), not stripped
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt%2BLiY9%2B46rw%40mail.gmail.com.
