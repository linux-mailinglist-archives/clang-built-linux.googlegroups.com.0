Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3M6VSAAMGQEDILWE3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8720C300A19
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 18:46:22 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id m20sf974225vkk.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 09:46:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611337581; cv=pass;
        d=google.com; s=arc-20160816;
        b=HlFEwGo+N1rTPT6sZD74acfWuKVhMBn4O+bs521TK24FU3AMaMpwgOC9l7gtOmN0T/
         1BaN7DaYakv2mX0I0oYkSbMX3/F7N70bVUH3Z7fvMnxCeJjyuNpAy0D86Uet8GIVvYYJ
         SY+kWcVJYRwBNR6QRyRfx01G6BYORs51rjZXxCIn1PNoU7hPqR7vgiX8ZQ42048ftrxe
         RLKTY67Zi67FCbNdPGFM+twrN93klw5n6+OYPsnJ3nG90P7kZ9pkZ1Vxh1bIVLFR7pCf
         VANJhepEnFo5q0kMIYQFjH3lc2aZ0+d+rq247fSaRZG5BNMu0xZ9jKU/Tsux6MWcEKeM
         1m2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fCu7SmjtQPKNT2KNBUKHb3WpQlAAkhC+9wzhcK2IaSs=;
        b=Bg7msrSUl3bu7lxGHEFkz/s2cdNUk4/VxdNWdAxsFyyQZkKIHl5X+n/JJCyEApltZx
         mRec/gIYQbe+FyjQON2QIbhK5FKWuhbc2npAKIlPFqnBPIfRulRLGnBg5p2ZtAZkcwcv
         CPyazVdVf4ctNOmfnbge2Z2JjIdCP7SRL/0Fe3EBdG7cDOBqupDUVj7DEonqsL1+InuN
         NFgIE9jpidgupbKXzA1GIyvmcDZzZGJXgNrND9D45h8ivmvp6hdBbvAZMA757HAfW+IH
         tLGMuqKWW8ZLiz6Im5Ul0EvRKSCybLqXAiY/rV0CmtQ6MEA69BmGBi6Xq5gihv50f6He
         BS7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wuvv5G6D;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fCu7SmjtQPKNT2KNBUKHb3WpQlAAkhC+9wzhcK2IaSs=;
        b=Y/IJDMA09pkCYnrk/MM/5dFXOnQHuIJzDC8b7xCbqwnIGVAjsaL67NcgBJbj++u+ye
         3q8j5dqNCHCjcubFgi0vR5Bz8QfJ/iqae+Kr67e46w+SdEekkM9kJhYmYFowQjTlSU7m
         hWvmASGQp2We+jgwOzu2RsLI9p166s8sSoGCFLp6jf3UifiKT6vWxxgShS6b5TWMsz3x
         4S3gtC50TdCXsU4MSPUzSjvtiL60E/ogA+jKpZ3cT/3hfmwlY7B02KljQ0BPCjUac/5A
         IriCABFcxkZbn8d98h6koRwtFQlYffFBWqxS00I3UIvH8BA/CTg0u33+u7jiOU4lunzO
         h4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fCu7SmjtQPKNT2KNBUKHb3WpQlAAkhC+9wzhcK2IaSs=;
        b=SkF1hu8u5VOGb/Pq3y2ko+WOd2ZveT/CxXLxfisPykBtEo9B/HwksFRtrluvkgouW+
         X6Wxlsk47yShNvu2We6W/k9sbGQgQUgA2gKPAGIG9OO7tu0achy2gVpHj9k8WEJ2+3cP
         zIgap1g1hQ7is2JBKgtWMU4xXohW+KAsSKE4PutWBlfmsM1sXBS2qxnT+vAYEQYBty9p
         O574zml/Noaryk7Gdrdccfxv707N0tVtE7OkcuUQcG1ZI4fx8C4+MqoShhGPPauQDLsu
         d8lk5cdm/3riRqOGq7+UIaDNLDfONxl1zuKUC9Ef3PViIag2Nkp4h0vyMJmMgWwImlB4
         SCoA==
X-Gm-Message-State: AOAM533uNPr/audc9wt+9DK4uamT2LF/ZDQp/xAWq95RUaG1bdQDWB3H
	zEeN4SjBPfP7NBIJL1Eibrk=
X-Google-Smtp-Source: ABdhPJzMZrzDEqt22sz4/qRhBqS22E0NbYG7jvVlttDjyncqPqlJN8kUuIOosHdKZRUhodIaj2Rt5Q==
X-Received: by 2002:a67:f810:: with SMTP id l16mr984335vso.41.1611337581551;
        Fri, 22 Jan 2021 09:46:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4ac6:: with SMTP id x189ls396988vka.4.gmail; Fri, 22 Jan
 2021 09:46:21 -0800 (PST)
X-Received: by 2002:a1f:ae89:: with SMTP id x131mr652895vke.8.1611337581018;
        Fri, 22 Jan 2021 09:46:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611337581; cv=none;
        d=google.com; s=arc-20160816;
        b=S54yf7CBBCb+LdtW9JNGCXACLbYBM29TbUoSLSK29lJcd2V8f2fz7xOALAxmVDoSQ0
         ALtTK/0S1iBj4FedgYVC8yhR1vWBYp37bxGAsyar1WNdhOBH9ejcheLxv5x1Ongc7On7
         G7nO2UX5IsRSExFs9cdOL+k7+ZTkmaZ0SaFEnI5XYZA5SSqqh0mxNqteFh6BYr/07G8n
         2CZjcqupN4APgz6DY1FZrqtqe0kdIKllFdrLp+Qle6PkSY1EQi2aL6S/1eY4vej21dxY
         LCdLAcNZIfGj4zy3hMJ+TTEsh5Q6+M5lQOX1ay8idUsAey18u3N39rJVHBDB6cNLvBuM
         v7IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gv+NKby1AgiuBrYLrBBB1VlVrkq+Y1/AQO5M5yEOCqw=;
        b=hI/EnW6odeo9Avd1+pHV13Cn5/fEwoXeRDOWKl3pqxhT/6gSmnCh2T7sbSUi3xGx4A
         KgNtVr6gjccPNfDPiaZc75Ge2a9sK9eP6i+d4JxViueLQtwd2BCQ8yr1CnpM5/GpJqJC
         cZpSgdPl+ioT/Ea511sRRIEffD3Y+1bT8wrtssHd4TU2tUbM4UONi93LQherxcpCiSDW
         9g0oR/S0Lwk6fpsGim4oDjgLSKGFJ7wJvFJSm257VCwkU8HEBekmzFwKGbs5KZD9ASbu
         hsh19dol3ySUWzAs874Q+kAlWMvbdfuOObuBYzSDwddK1XyqQJAlBccBxOP/cha7RO5V
         mb0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wuvv5G6D;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id h123si642922vkg.0.2021.01.22.09.46.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 09:46:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id u4so4296425pjn.4
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 09:46:20 -0800 (PST)
X-Received: by 2002:a17:90b:228f:: with SMTP id kx15mr6884288pjb.32.1611337579851;
 Fri, 22 Jan 2021 09:46:19 -0800 (PST)
MIME-Version: 1.0
References: <2b2a556c-5050-abe4-32f6-72621624bd8f@intel.com>
 <CAKwvOdk_yB9esvxyuYQ9zdraiK41fm5ncbdzw4GvLnX8FXbShQ@mail.gmail.com>
 <CAKwvOdn+TW8icmE7D_4OXPh492c908hTa7mA5MVZB1uRgg8btA@mail.gmail.com> <41c18ad2-e824-28a5-2a7b-cbcf33a9d8de@intel.com>
In-Reply-To: <41c18ad2-e824-28a5-2a7b-cbcf33a9d8de@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 22 Jan 2021 09:46:08 -0800
Message-ID: <CAKwvOdmLe3D1BehPdM_Vej716NLMVdeDzs3vEXLsgYm6WnQLfw@mail.gmail.com>
Subject: Re: torture: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
To: Rong Chen <rong.a.chen@intel.com>
Cc: Fangrui Song <i@maskray.me>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkp <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wuvv5G6D;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e
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

On Thu, Jan 21, 2021 at 11:22 PM Rong Chen <rong.a.chen@intel.com> wrote:
>
> Hi Nick,
>
> The problem was found by the CI but bisected manually.

ah, ok thanks for taking the time to run the bisection and report the
results! We appreciate it.

>
> Best Regards,
> Rong Chen
>
> On 1/21/21 4:51 AM, Nick Desaulniers wrote:
> > Oh, this is a nice service! Is this new? (bisection of LLVM itself)
> >
> > On Wed, Jan 20, 2021 at 12:49 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> >> https://github.com/ClangBuiltLinux/linux/issues/1250
> >>
> >> On Fri, Dec 18, 2020 at 1:47 AM Chen, Rong A <rong.a.chen@intel.com> wrote:
> >>> 0day found a regression on commit
> >>> a084c0388e2a59b9556f2de0083333232da3f1d6 which causes the below issue:
> >>>
> >>>
> >>> user  :notice: [   90.913529] 2020-12-17 22:53:55 modprobe locktorture
> >>>
> >>> kern  :warn  : [   90.925547] torture: Unknown symbol
> >>> _GLOBAL_OFFSET_TABLE_ (err -2)
> >>> user  :err   : [   90.980297] modprobe: ERROR: could not insert
> >>> 'locktorture': Unknown symbol in module, or unknown parameter (see dmesg)
> >>>
> >>>
> >>>
> >>> commit a084c0388e2a59b9556f2de0083333232da3f1d6
> >>> Author: Fangrui Song <i@maskray.me>
> >>> Date:   Sat Dec 5 14:54:37 2020 -0800
> >>>
> >>>       [TargetMachine] Don't imply dso_local on function declarations in
> >>> Reloc::Static model for ELF/wasm
> >>>
> >>>       clang/lib/CodeGen/CodeGenModule sets dso_local on applicable
> >>> function declarations,
> >>>       we don't need to duplicate the work in
> >>> TargetMachine:shouldAssumeDSOLocal.
> >>>       (Actually the long-term goal (started by r324535) is to drop
> >>> TargetMachine::shouldAssumeDSOLocal.)
> >>>
> >>>       By not implying dso_local, we will respect
> >>> dso_local/dso_preemptable specifiers
> >>>       set by the frontend. This allows the proposed
> >>> -fno-direct-access-external-data
> >>>       option to work with -fno-pic and prevent a canonical PLT entry
> >>> (SHN_UNDEF with non-zero st_value)
> >>>       when taking the address of a function symbol.
> >>>
> >>>       This patch should be NFC in terms of the Clang emitted assembly
> >>> because the case
> >>>       we don't set dso_local is a case Clang sets dso_local. However,
> >>> some tests don't
> >>>       set dso_local on some function declarations and expose some
> >>> differences. Most
> >>>       tests have been fixed to be more robust in the previous commit.
> >>>
> >>> :040000 040000 930703e51e21ae9aea20ad64530d74ea05ea8f42
> >>> 01c6ecbff5899804cdd30358c09dd36119859235 M      llvm
> >>>
> >>>
> >>>
> >>> git bisect start
> >>> # bad: [eea67baf8706d82268d26e908cf5415c5af114ff] [llvm-profgen][NFC]
> >>> Fix test failure by making unwinder's output deterministic
> >>> git bisect bad eea67baf8706d82268d26e908cf5415c5af114ff
> >>> # good: [175ebad958a0ebaf6c56c20ab30b9d4347742c29] DebugInfo: remove
> >>> unnecessary mtriple from test/DebugInfo/X86/abstract_origin.ll
> >>> git bisect good 175ebad958a0ebaf6c56c20ab30b9d4347742c29
> >>> # good: [c4a04059026b98e8c23981f1195a61494a661cdb] Add `Operation*
> >>> OpState::operator->()` to provide more convenient access to members of
> >>> Operation.
> >>> git bisect good c4a04059026b98e8c23981f1195a61494a661cdb
> >>> # good: [ad923edfc1ce0c0b60e8270954c8d098aab3c3f8] [RISCV] Add support
> >>> for printing pcrel immediates as absolute addresses in llvm-objdump
> >>> git bisect good ad923edfc1ce0c0b60e8270954c8d098aab3c3f8
> >>> # bad: [9fe1809f8cac141fdb5cf7e6e05ef1ea4818343c] [X86] Delete 3 unused
> >>> declarations
> >>> git bisect bad 9fe1809f8cac141fdb5cf7e6e05ef1ea4818343c
> >>> # good: [8925d2347432b69d7e4b721a4ced85df0ad782b1] [BasicAA] Add recphi
> >>> tests with nested loops (NFC)
> >>> git bisect good 8925d2347432b69d7e4b721a4ced85df0ad782b1
> >>> # bad: [ee607ed5c36efd8e0536ddbeab1f2025b0e5f045] [debugserver] Call
> >>> posix_spawnattr_setarchpref_np throught the fn ptr.
> >>> git bisect bad ee607ed5c36efd8e0536ddbeab1f2025b0e5f045
> >>> # good: [68edf39ededf97a12602676f9cd537ed689151f0] [TargetMachine]
> >>> Simplify shouldAssumeDSOLocal by processing ExternalSymbolSDNode early
> >>> git bisect good 68edf39ededf97a12602676f9cd537ed689151f0
> >>> # bad: [a084c0388e2a59b9556f2de0083333232da3f1d6] [TargetMachine] Don't
> >>> imply dso_local on function declarations in Reloc::Static model for ELF/wasm
> >>> git bisect bad a084c0388e2a59b9556f2de0083333232da3f1d6
> >>> # good: [37f0c8df47d84ba311fc9a2c1884935ba8961e84] [X86] Emit @PLT for
> >>> x86-64 and keep unadorned symbols for x86-32
> >>> git bisect good 37f0c8df47d84ba311fc9a2c1884935ba8961e84
> >>> # good: [bfda69416c6d0a76b40644b1b0cbc1cbca254a61] [BasicAA] Fix a bug
> >>> with relational reasoning across iterations
> >>> git bisect good bfda69416c6d0a76b40644b1b0cbc1cbca254a61
> >>> # good: [6b6c3aaeacfdc4a482de4af41719b0a4b50aeadf] [test] Add explicit
> >>> dso_local to function declarations in static relocation model tests
> >>> git bisect good 6b6c3aaeacfdc4a482de4af41719b0a4b50aeadf
> >>> # first bad commit: [a084c0388e2a59b9556f2de0083333232da3f1d6]
> >>> [TargetMachine] Don't imply dso_local on function declarations in
> >>> Reloc::Static model for ELF/wasm
> >>>
> >>> Best Regards,
> >>> Rong Chen
> >>>
> >>> --
> >>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2b2a556c-5050-abe4-32f6-72621624bd8f%40intel.com.
> >>
> >>
> >> --
> >> Thanks,
> >> ~Nick Desaulniers
> >
> >
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmLe3D1BehPdM_Vej716NLMVdeDzs3vEXLsgYm6WnQLfw%40mail.gmail.com.
