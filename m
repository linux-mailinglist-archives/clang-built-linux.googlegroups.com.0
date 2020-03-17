Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRNLYTZQKGQEPVW2LHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id E1280188D10
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 19:24:06 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id s6sf13047722plp.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 11:24:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584469445; cv=pass;
        d=google.com; s=arc-20160816;
        b=0zSmAVSC60GWbY4XGApV0hFoYOBzMu29kI0Lz/CCWuvb9dNTyDJ0FkqdChUuFeev0G
         3IkoGA3r//fSC5/lbFKucgNSuobfk8ahufxpHafwKRS5x5+j/qz36YOC+1yoGreIoihX
         oXa8hi1ielq9rIE746hmidsHmGiK3E+YFhOQaF22myTmQCzSZnNWCAH1mIO9Ecpwp4MF
         Imkjh5Hq4fxWuhFQDl29hQKKk9fXDmvkP2PMzSAhYtwdRbXjZv3KC9p9yzZVKU80IMPQ
         bS8bJTAqRi/8HnPnz9MLzXMVXwv311d7tlIvQFGy6F7qJ9v4i0MXlLSJvpbKzBiO/h8M
         +4Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8BserLGZ8hB31HZmCOKWQu5tJUtyvgdEhsUCdk4t10c=;
        b=L+KnkR1Ire+JzDv3nLhf1gKRgBFU3JR34E0sQmAS5nPa+u8RoBh50IVLDdF/j68kkS
         YtNZDTGyjiN3eavPQUyRwo3CBHeiGv3VIAOWTifHV8w0Inl03XvyxseOvjNjo907arb4
         1VhOz3xEgCJHef83H/cg1ya3u+LayOwgdlGM1Sj+6PzjK1q2IsGunMgKf82AY57VtUh3
         qfRDSEF0wgwqwSisByiSqKpL71GUOG3oNbqkEzu7HZH213AHO4/UfReP7Pi47JxTx8dE
         RVAAuNeBkLKEt35EiheRKg1fKcf1cAUJMdab74WNPZh+Xrve6SpYAaWoZZSwI/4ulZk8
         c+aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zqbmmrqk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8BserLGZ8hB31HZmCOKWQu5tJUtyvgdEhsUCdk4t10c=;
        b=eysh9MT1u4AwDR5pXnrpxg7EVLg6nPcOtP5CoNZXlBR//MpirzW0skZal5P2uluVKT
         o574VuME17inOPG56Vw1s6QqKya2gZNqGJYfvzKa7/8bHs8xYTUANPZYI7jqYYFlKQTD
         vBGQj+LwsHcRkx/UPNQjSbXGYmQ8xcvJUAMTY4PL4ZmR2im0dbBvUDktkmZ5QIwMLDtK
         2j0pkqMU+63Gf8192bsPl6f/EpepeXKzDoQ4j+ec/ezQuHjwcKr5Os8XsXbncCwoEgjn
         90SFPn8RzQVclznvAcZmY2YQLtFewlsu8zh1HvS5wA08NisjFOWkkOyxp46OLN9hVV8T
         US/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8BserLGZ8hB31HZmCOKWQu5tJUtyvgdEhsUCdk4t10c=;
        b=aavcZFRC/SfPeSkVD8RotxHfdkkTip66FCGHK7k30Xe+sdsLRLKm/XsFdgcA25qr+9
         ZnZETmo6zw6LTxKfjMlUnJG4tFUe6HIU2NYGW9hjPDMx2AjxMSu/R84DEZPnbd2LR0ee
         B29WpdZcv7jzg9AqIXaSEF21cwT+5CNEMzmjvkRYZ/LSsnUREZd3HJVct4JHdMNFMoJb
         BhW5ZV9bWa5KOlsAgw1Id+O1H26Yj7TJz+kOpUpDLWlfDu9JyHtKGAIHzUg9iT/Gd4rO
         Zirqz9hga1G8oPMq9zjGueNzXLBukn7HuHnuP34lK74ctjNSuUNuyJurNEOI7u1qFBfi
         rxkA==
X-Gm-Message-State: ANhLgQ2ZbnPcTW6cDDTUpldl1NaAYsyOv8H/f5YpniJwLcBhMd3PGZad
	Zv5FI8qGYSlRAxk9kIN2iXQ=
X-Google-Smtp-Source: ADFU+vuQjvauQSHOOZIATeqmY4Cwg2oNNjteGyOZ5wRbSFu9WYcb8/MOJZ2Gmi1wbsRfNkKAXD49xQ==
X-Received: by 2002:a17:902:6b48:: with SMTP id g8mr5518513plt.149.1584469445274;
        Tue, 17 Mar 2020 11:24:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls10800175pfg.9.gmail; Tue, 17 Mar
 2020 11:24:04 -0700 (PDT)
X-Received: by 2002:a63:384e:: with SMTP id h14mr474616pgn.295.1584469444783;
        Tue, 17 Mar 2020 11:24:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584469444; cv=none;
        d=google.com; s=arc-20160816;
        b=EZ7vtPPAc/0644Ta4jVBzNuBKoeKONFcQn7FabP1qe1xz7nz1nii0VCvjRSc4LWFt1
         55L/E1+FtjDpSEu2aqJcqWC6wNW4fW9/Nb7vmP5sTMhQnd3kzMJBPDSvOCLIqxVT5/Jp
         i3bZMOiOaky5gs6Z03THXyHs0nQfU7Q0zTeEAvoEE0E4WlbV1yb46vpGRFP1I1kqxkyK
         Jo+4MPJ7ZJ+stTFYGuVPvLE2Eko7pk/nnOSzbkUIDW/s/vT2X3rWcJrRAGrkZ4Hxn0m2
         o9nh8Kg2GObOX98aqouKPvJv8iLNPTfja691cZSy9Pnfl48De6/8xJUOrpo+NKcLLVwv
         Tz8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/9FSjjD4Z+ItGOXigXzsUGtS4aiWv1V4Yo2JhagbS8c=;
        b=BSe0ltYD+hppU5raZWTIUDWToT9G5Ti9CUfZ9ypFTXdv0EdLfzRR/Sb1b/xdofZuGd
         KazieseO7tinNxj6okSeaumq4LF/quC0Fx8dDn+ZTuD6yHL3psQvE+m/XRcbI6u+tP/W
         BzGOg3k2w8MlhsU6WMhc4iy99+np0BmykUnshTDthfe9kPBWdG9ybeopRljCpa7RPJB3
         x3YfC+Hpfr5ioo3zUJFL0rkshpA3Pz1HliCyghbO6Dc7ZA1rc0iqWwrxu/alMgNlJBi0
         VssrODcL35FBNfu9Snhb8WjcfrkdS8KPcMpJifTqzzLmhmdxYvKHkSSdwFOcS+14W7Lf
         XLJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zqbmmrqk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id 83si170904pge.4.2020.03.17.11.24.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 11:24:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id mq3so117894pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 11:24:04 -0700 (PDT)
X-Received: by 2002:a17:902:22e:: with SMTP id 43mr2749555plc.119.1584469443891;
 Tue, 17 Mar 2020 11:24:03 -0700 (PDT)
MIME-Version: 1.0
References: <537655340.10372.1584469280408.JavaMail.javamailuser@localhost>
In-Reply-To: <537655340.10372.1584469280408.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Mar 2020 11:23:52 -0700
Message-ID: <CAKwvOdnHdudUpVJrr3EXxkHpa6SQ8sxCYXeQdvagxWLkkH0_vA@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allnoconfig
 - Build # 9 - Successful!
To: Sami Tolvanen <samitolvanen@google.com>, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Linaro LLVM <llvm@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Zqbmmrqk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031
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

Reported in: https://bugs.llvm.org/show_bug.cgi?id=45225
Fixed by me in: https://reviews.llvm.org/D76297
;)

On Tue, Mar 17, 2020 at 11:21 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allnoconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-aarch64-next-allnoconfig
>
> Culprit:
> <cut>
> commit af64948e2a050d1ef3b7fd314ed07b2a2fe402a5
> Author: Kerry McLaughlin <kerry.mclaughlin@arm.com>
> Date:   Tue Mar 17 10:27:29 2020 +0000
>
>     [SVE][Inline-Asm] Add constraints for SVE ACLE types
>
>     Summary:
>     Adds the constraints described below to ensure that we
>     can tie variables of SVE ACLE types to operands in inline-asm:
>      - y: SVE registers Z0-Z7
>      - Upl: One of the low eight SVE predicate registers (P0-P7)
>      - Upa: Full range of SVE predicate registers (P0-P15)
>
>     Reviewers: sdesmalen, huntergr, rovka, cameron.mcinally, efriedma, rengolin
>
>     Reviewed By: efriedma
>
>     Subscribers: miyuki, tschuett, rkruppe, psnobl, cfe-commits
>
>     Tags: #clang
>
>     Differential Revision: https://reviews.llvm.org/D75690
> </cut>
>
> First few build errors in logs:
> 00:00:46 ./arch/arm64/include/asm/processor.h:286:15: error: invalid operand for inline asm constraint 'p'
> 00:00:46 make[2]: *** [kernel/locking/qspinlock.o] Error 1
> 00:00:47 make[1]: *** [kernel/locking] Error 2
> 00:00:48 ./arch/arm64/include/asm/processor.h:280:15: error: invalid operand for inline asm constraint 'p'
> 00:00:48 ./arch/arm64/include/asm/processor.h:280:15: error: invalid operand for inline asm constraint 'p'
> 00:00:49 make[2]: *** [kernel/sched/core.o] Error 1
> 00:00:54 ./arch/arm64/include/asm/processor.h:286:15: error: invalid operand for inline asm constraint 'p'
> 00:00:54 make[1]: *** [mm/vmscan.o] Error 1
> 00:00:57 ./arch/arm64/include/asm/processor.h:293:8: error: invalid operand for inline asm constraint 'p'
> 00:00:57 make[1]: *** [fs/inode.o] Error 1
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[llvm_branch]="c5ff3df839321847ab7558ffb292f725d0356dfe"
>
> Results regressed to (for first_bad == af64948e2a050d1ef3b7fd314ed07b2a2fe402a5)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 445
>
> from (for last_good == 06489eaa92162c6b01a767124f3fcdada99bb2f1)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 453
> # linux build successful:
> all
> # linux boot successful:
> boot
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/9/artifact/artifacts/build-af64948e2a050d1ef3b7fd314ed07b2a2fe402a5/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/9/artifact/artifacts/build-06489eaa92162c6b01a767124f3fcdada99bb2f1/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/9/
>
> Reproduce builds:
> <cut>
> mkdir investigate-llvm-af64948e2a050d1ef3b7fd314ed07b2a2fe402a5
> cd investigate-llvm-af64948e2a050d1ef3b7fd314ed07b2a2fe402a5
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/9/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/9/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/9/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd llvm
>
> # Reproduce first_bad build
> git checkout --detach af64948e2a050d1ef3b7fd314ed07b2a2fe402a5
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach 06489eaa92162c6b01a767124f3fcdada99bb2f1
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allnoconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/9/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/9/consoleText
>
> Full commit:
> <cut>
> commit af64948e2a050d1ef3b7fd314ed07b2a2fe402a5
> Author: Kerry McLaughlin <kerry.mclaughlin@arm.com>
> Date:   Tue Mar 17 10:27:29 2020 +0000
>
>     [SVE][Inline-Asm] Add constraints for SVE ACLE types
>
>     Summary:
>     Adds the constraints described below to ensure that we
>     can tie variables of SVE ACLE types to operands in inline-asm:
>      - y: SVE registers Z0-Z7
>      - Upl: One of the low eight SVE predicate registers (P0-P7)
>      - Upa: Full range of SVE predicate registers (P0-P15)
>
>     Reviewers: sdesmalen, huntergr, rovka, cameron.mcinally, efriedma, rengolin
>
>     Reviewed By: efriedma
>
>     Subscribers: miyuki, tschuett, rkruppe, psnobl, cfe-commits
>
>     Tags: #clang
>
>     Differential Revision: https://reviews.llvm.org/D75690
> ---
>  clang/lib/Basic/Targets/AArch64.cpp                |  14 +-
>  clang/lib/Basic/Targets/AArch64.h                  |  15 ++
>  clang/lib/CodeGen/CGCall.cpp                       |  10 +-
>  clang/lib/CodeGen/CGStmt.cpp                       |  15 +-
>  clang/test/CodeGen/aarch64-sve-inline-asm-crash.c  |  24 ++
>  .../CodeGen/aarch64-sve-inline-asm-datatypes.c     | 252 +++++++++++++++++++++
>  .../CodeGen/aarch64-sve-inline-asm-negative-test.c |  21 ++
>  7 files changed, 340 insertions(+), 11 deletions(-)
>
> diff --git a/clang/lib/Basic/Targets/AArch64.cpp b/clang/lib/Basic/Targets/AArch64.cpp
> index bd1a8834c2fa..336c7491a5cc 100644
> --- a/clang/lib/Basic/Targets/AArch64.cpp
> +++ b/clang/lib/Basic/Targets/AArch64.cpp
> @@ -486,17 +486,29 @@ bool AArch64TargetInfo::validateAsmConstraint(
>      Info.setAllowsRegister();
>      return true;
>    case 'U':
> +    if (Name[1] == 'p' && (Name[2] == 'l' || Name[2] == 'a')) {
> +      // SVE predicate registers ("Upa"=P0-15, "Upl"=P0-P7)
> +      Info.setAllowsRegister();
> +      Name += 2;
> +      return true;
> +    }
>      // Ump: A memory address suitable for ldp/stp in SI, DI, SF and DF modes.
>      // Utf: A memory address suitable for ldp/stp in TF mode.
>      // Usa: An absolute symbolic address.
>      // Ush: The high part (bits 32:12) of a pc-relative symbolic address.
> -    llvm_unreachable("FIXME: Unimplemented support for U* constraints.");
> +
> +    // Better to return an error saying that it's an unrecognised constraint
> +    // even if this is a valid constraint in gcc.
> +    return false;
>    case 'z': // Zero register, wzr or xzr
>      Info.setAllowsRegister();
>      return true;
>    case 'x': // Floating point and SIMD registers (V0-V15)
>      Info.setAllowsRegister();
>      return true;
> +  case 'y': // SVE registers (V0-V7)
> +    Info.setAllowsRegister();
> +    return true;
>    }
>    return false;
>  }
> diff --git a/clang/lib/Basic/Targets/AArch64.h b/clang/lib/Basic/Targets/AArch64.h
> index 5e78237743c9..befbf693ad8b 100644
> --- a/clang/lib/Basic/Targets/AArch64.h
> +++ b/clang/lib/Basic/Targets/AArch64.h
> @@ -87,6 +87,21 @@ public:
>
>    ArrayRef<const char *> getGCCRegNames() const override;
>    ArrayRef<TargetInfo::GCCRegAlias> getGCCRegAliases() const override;
> +
> +  std::string convertConstraint(const char *&Constraint) const override {
> +    std::string R;
> +    switch (*Constraint) {
> +    case 'U': // Three-character constraint; add "@3" hint for later parsing.
> +      R = std::string("@3") + std::string(Constraint, 3);
> +      Constraint += 2;
> +      break;
> +    default:
> +      R = std::string(1, *Constraint);
> +      break;
> +    }
> +    return R;
> +  }
> +
>    bool validateAsmConstraint(const char *&Name,
>                               TargetInfo::ConstraintInfo &Info) const override;
>    bool
> diff --git a/clang/lib/CodeGen/CGCall.cpp b/clang/lib/CodeGen/CGCall.cpp
> index 1188ea39ba2c..ad8ebd245b93 100644
> --- a/clang/lib/CodeGen/CGCall.cpp
> +++ b/clang/lib/CodeGen/CGCall.cpp
> @@ -4496,8 +4496,9 @@ RValue CodeGenFunction::EmitCall(const CGFunctionInfo &CallInfo,
>    // Update the largest vector width if any arguments have vector types.
>    for (unsigned i = 0; i < IRCallArgs.size(); ++i) {
>      if (auto *VT = dyn_cast<llvm::VectorType>(IRCallArgs[i]->getType()))
> -      LargestVectorWidth = std::max((uint64_t)LargestVectorWidth,
> -                                   VT->getPrimitiveSizeInBits().getFixedSize());
> +      LargestVectorWidth =
> +          std::max((uint64_t)LargestVectorWidth,
> +                   VT->getPrimitiveSizeInBits().getKnownMinSize());
>    }
>
>    // Compute the calling convention and attributes.
> @@ -4611,8 +4612,9 @@ RValue CodeGenFunction::EmitCall(const CGFunctionInfo &CallInfo,
>
>    // Update largest vector width from the return type.
>    if (auto *VT = dyn_cast<llvm::VectorType>(CI->getType()))
> -    LargestVectorWidth = std::max((uint64_t)LargestVectorWidth,
> -                                  VT->getPrimitiveSizeInBits().getFixedSize());
> +    LargestVectorWidth =
> +        std::max((uint64_t)LargestVectorWidth,
> +                 VT->getPrimitiveSizeInBits().getKnownMinSize());
>
>    // Insert instrumentation or attach profile metadata at indirect call sites.
>    // For more details, see the comment before the definition of
> diff --git a/clang/lib/CodeGen/CGStmt.cpp b/clang/lib/CodeGen/CGStmt.cpp
> index a334bab06783..49f1725ed470 100644
> --- a/clang/lib/CodeGen/CGStmt.cpp
> +++ b/clang/lib/CodeGen/CGStmt.cpp
> @@ -2095,8 +2095,9 @@ void CodeGenFunction::EmitAsmStmt(const AsmStmt &S) {
>
>        // Update largest vector width for any vector types.
>        if (auto *VT = dyn_cast<llvm::VectorType>(ResultRegTypes.back()))
> -        LargestVectorWidth = std::max((uint64_t)LargestVectorWidth,
> -                                   VT->getPrimitiveSizeInBits().getFixedSize());
> +        LargestVectorWidth =
> +            std::max((uint64_t)LargestVectorWidth,
> +                     VT->getPrimitiveSizeInBits().getKnownMinSize());
>      } else {
>        ArgTypes.push_back(Dest.getAddress(*this).getType());
>        Args.push_back(Dest.getPointer(*this));
> @@ -2120,8 +2121,9 @@ void CodeGenFunction::EmitAsmStmt(const AsmStmt &S) {
>
>        // Update largest vector width for any vector types.
>        if (auto *VT = dyn_cast<llvm::VectorType>(Arg->getType()))
> -        LargestVectorWidth = std::max((uint64_t)LargestVectorWidth,
> -                                   VT->getPrimitiveSizeInBits().getFixedSize());
> +        LargestVectorWidth =
> +            std::max((uint64_t)LargestVectorWidth,
> +                     VT->getPrimitiveSizeInBits().getKnownMinSize());
>        if (Info.allowsRegister())
>          InOutConstraints += llvm::utostr(i);
>        else
> @@ -2207,8 +2209,9 @@ void CodeGenFunction::EmitAsmStmt(const AsmStmt &S) {
>
>      // Update largest vector width for any vector types.
>      if (auto *VT = dyn_cast<llvm::VectorType>(Arg->getType()))
> -      LargestVectorWidth = std::max((uint64_t)LargestVectorWidth,
> -                                   VT->getPrimitiveSizeInBits().getFixedSize());
> +      LargestVectorWidth =
> +          std::max((uint64_t)LargestVectorWidth,
> +                   VT->getPrimitiveSizeInBits().getKnownMinSize());
>
>      ArgTypes.push_back(Arg->getType());
>      Args.push_back(Arg);
> diff --git a/clang/test/CodeGen/aarch64-sve-inline-asm-crash.c b/clang/test/CodeGen/aarch64-sve-inline-asm-crash.c
> new file mode 100644
> index 000000000000..11ddb7f6d580
> --- /dev/null
> +++ b/clang/test/CodeGen/aarch64-sve-inline-asm-crash.c
> @@ -0,0 +1,24 @@
> +// REQUIRES: aarch64-registered-target
> +
> +// RUN: not %clang_cc1 -triple aarch64-none-linux-gnu -target-feature +sve -fallow-half-arguments-and-returns \
> +// RUN:   -target-feature +neon -S -O1 -o - %s 2>&1 | FileCheck %s
> +
> +// Set a vector constraint for an sve predicate register
> +// As the wrong constraint is used for an SVBool,
> +// the compiler will try to extend the nxv16i1 to an nxv16i8
> +// TODO: We don't have patterns for this yet but once they are added this test
> +// should be updated to check for an assembler error
> +__SVBool_t funcB1(__SVBool_t in)
> +{
> +  __SVBool_t ret ;
> +  asm volatile (
> +    "mov %[ret].b, %[in].b \n"
> +    : [ret] "=w" (ret)
> +    : [in] "w" (in)
> +    :);
> +
> +  return ret ;
> +}
> +
> +// CHECK: funcB1
> +// CHECK-ERROR: fatal error: error in backend: Cannot select
> diff --git a/clang/test/CodeGen/aarch64-sve-inline-asm-datatypes.c b/clang/test/CodeGen/aarch64-sve-inline-asm-datatypes.c
> new file mode 100644
> index 000000000000..c68bb25e36fa
> --- /dev/null
> +++ b/clang/test/CodeGen/aarch64-sve-inline-asm-datatypes.c
> @@ -0,0 +1,252 @@
> +// RUN: %clang_cc1 -triple aarch64-none-linux-gnu -target-feature +sve -fallow-half-arguments-and-returns \
> +// RUN:   -target-feature +neon -S -O1 -o - -emit-llvm %s | FileCheck %s
> +
> +// Tests to check that all sve datatypes can be passed in as input operands
> +// and passed out as output operands.
> +
> +#define SVINT_TEST(DT, KIND)\
> +DT func_int_##DT##KIND(DT in)\
> +{\
> +  DT out;\
> +  asm volatile (\
> +    "ptrue p0.b\n"\
> +    "mov %[out]." #KIND ", p0/m, %[in]." #KIND "\n"\
> +    : [out] "=w" (out)\
> +    : [in] "w" (in)\
> +    : "p0"\
> +    );\
> +  return out;\
> +}
> +
> +SVINT_TEST(__SVUint8_t,b);
> +// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
> +SVINT_TEST(__SVUint8_t,h);
> +// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
> +SVINT_TEST(__SVUint8_t,s);
> +// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
> +SVINT_TEST(__SVUint8_t,d);
> +// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
> +
> +SVINT_TEST(__SVUint16_t,b);
> +// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
> +SVINT_TEST(__SVUint16_t,h);
> +// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
> +SVINT_TEST(__SVUint16_t,s);
> +// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
> +SVINT_TEST(__SVUint16_t,d);
> +// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
> +
> +SVINT_TEST(__SVUint32_t,b);
> +// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
> +SVINT_TEST(__SVUint32_t,h);
> +// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
> +SVINT_TEST(__SVUint32_t,s);
> +// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
> +SVINT_TEST(__SVUint32_t,d);
> +// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
> +
> +SVINT_TEST(__SVUint64_t,b);
> +// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
> +SVINT_TEST(__SVUint64_t,h);
> +// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
> +SVINT_TEST(__SVUint64_t,s);
> +// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
> +SVINT_TEST(__SVUint64_t,d);
> +// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
> +
> +SVINT_TEST(__SVInt8_t,b);
> +// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
> +SVINT_TEST(__SVInt8_t,h);
> +// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
> +SVINT_TEST(__SVInt8_t,s);
> +// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
> +SVINT_TEST(__SVInt8_t,d);
> +// CHECK: call <vscale x 16 x i8> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 16 x i8> %in)
> +
> +SVINT_TEST(__SVInt16_t,b);
> +// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
> +SVINT_TEST(__SVInt16_t,h);
> +// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
> +SVINT_TEST(__SVInt16_t,s);
> +// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
> +SVINT_TEST(__SVInt16_t,d);
> +// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 8 x i16> %in)
> +
> +SVINT_TEST(__SVInt32_t,b);
> +// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
> +SVINT_TEST(__SVInt32_t,h);
> +// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
> +SVINT_TEST(__SVInt32_t,s);
> +// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
> +SVINT_TEST(__SVInt32_t,d);
> +// CHECK: call <vscale x 4 x i32> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in)
> +
> +SVINT_TEST(__SVInt64_t,b);
> +// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
> +SVINT_TEST(__SVInt64_t,h);
> +// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
> +SVINT_TEST(__SVInt64_t,s);
> +// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
> +SVINT_TEST(__SVInt64_t,d);
> +// CHECK: call <vscale x 2 x i64> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 2 x i64> %in)
> +
> +
> +//Test that floats can also be used as datatypes for integer instructions
> +//and check all the variants which would not be possible with a float
> +//instruction
> +SVINT_TEST(__SVFloat16_t,b);
> +// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in)
> +SVINT_TEST(__SVFloat16_t,h);
> +// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in)
> +SVINT_TEST(__SVFloat16_t,s);
> +// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in)
> +SVINT_TEST(__SVFloat16_t,d);
> +// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in)
> +
> +SVINT_TEST(__SVFloat32_t,b);
> +// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in)
> +SVINT_TEST(__SVFloat32_t,h);
> +// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in)
> +SVINT_TEST(__SVFloat32_t,s);
> +// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in)
> +SVINT_TEST(__SVFloat32_t,d);
> +// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in)
> +
> +SVINT_TEST(__SVFloat64_t,b);
> +// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.b\0Amov $0.b, p0/m, $1.b\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in)
> +SVINT_TEST(__SVFloat64_t,h);
> +// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.b\0Amov $0.h, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in)
> +SVINT_TEST(__SVFloat64_t,s);
> +// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.b\0Amov $0.s, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in)
> +SVINT_TEST(__SVFloat64_t,d);
> +// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.b\0Amov $0.d, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in)
> +
> +
> +#define SVBOOL_TEST(KIND)\
> +__SVBool_t func_bool_##KIND(__SVBool_t in1, __SVBool_t in2)\
> +{\
> +  __SVBool_t out;\
> +  asm volatile (\
> +    "zip1 %[out]." #KIND ", %[in1]." #KIND ", %[in2]." #KIND "\n"\
> +    : [out] "=Upa" (out)\
> +    :  [in1] "Upa" (in1),\
> +      [in2] "Upa" (in2)\
> +    :);\
> +  return out;\
> +}
> +
> +SVBOOL_TEST(b) ;
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "zip1 $0.b, $1.b, $2.b\0A", "=@3Upa,@3Upa,@3Upa"(<vscale x 16 x i1> %in1, <vscale x 16 x i1> %in2)
> +SVBOOL_TEST(h) ;
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "zip1 $0.h, $1.h, $2.h\0A", "=@3Upa,@3Upa,@3Upa"(<vscale x 16 x i1> %in1, <vscale x 16 x i1> %in2)
> +SVBOOL_TEST(s) ;
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "zip1 $0.s, $1.s, $2.s\0A", "=@3Upa,@3Upa,@3Upa"(<vscale x 16 x i1> %in1, <vscale x 16 x i1> %in2)
> +SVBOOL_TEST(d) ;
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "zip1 $0.d, $1.d, $2.d\0A", "=@3Upa,@3Upa,@3Upa"(<vscale x 16 x i1> %in1, <vscale x 16 x i1> %in2)
> +
> +
> +#define SVBOOL_TEST_UPL(DT, KIND)\
> +__SVBool_t func_bool_upl_##KIND(__SVBool_t in1, DT in2, DT in3)\
> +{\
> +  __SVBool_t out;\
> +  asm volatile (\
> +    "fadd %[out]." #KIND ", %[in1]." #KIND ", %[in2]." #KIND ", %[in3]." #KIND "\n"\
> +    : [out] "=w" (out)\
> +    :  [in1] "Upl" (in1),\
> +      [in2] "w" (in2),\
> +      [in3] "w" (in3)\
> +    :);\
> +  return out;\
> +}
> +
> +SVBOOL_TEST_UPL(__SVInt8_t, b) ;
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "fadd $0.b, $1.b, $2.b, $3.b\0A", "=w,@3Upl,w,w"(<vscale x 16 x i1> %in1, <vscale x 16 x i8> %in2, <vscale x 16 x i8> %in3)
> +SVBOOL_TEST_UPL(__SVInt16_t, h) ;
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "fadd $0.h, $1.h, $2.h, $3.h\0A", "=w,@3Upl,w,w"(<vscale x 16 x i1> %in1, <vscale x 8 x i16> %in2, <vscale x 8 x i16> %in3)
> +SVBOOL_TEST_UPL(__SVInt32_t, s) ;
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "fadd $0.s, $1.s, $2.s, $3.s\0A", "=w,@3Upl,w,w"(<vscale x 16 x i1> %in1, <vscale x 4 x i32> %in2, <vscale x 4 x i32> %in3)
> +SVBOOL_TEST_UPL(__SVInt64_t, d) ;
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "fadd $0.d, $1.d, $2.d, $3.d\0A", "=w,@3Upl,w,w"(<vscale x 16 x i1> %in1, <vscale x 2 x i64> %in2, <vscale x 2 x i64> %in3)
> +
> +#define SVFLOAT_TEST(DT,KIND)\
> +DT func_float_##DT##KIND(DT inout1, DT in2)\
> +{\
> +  asm volatile (\
> +    "ptrue p0." #KIND ", #1 \n"\
> +    "fsub %[inout1]." #KIND ", p0/m, %[inout1]." #KIND ", %[in2]." #KIND "\n"\
> +    : [inout1] "=w" (inout1)\
> +    : "[inout1]" (inout1),\
> +      [in2] "w" (in2)\
> +    : "p0");\
> +  return inout1 ;\
> +}\
> +
> +SVFLOAT_TEST(__SVFloat16_t,s);
> +// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.s, #1 \0Afsub $0.s, p0/m, $0.s, $2.s\0A", "=w,0,w,~{p0}"(<vscale x 8 x half> %inout1, <vscale x 8 x half> %in2)
> +SVFLOAT_TEST(__SVFloat16_t,d);
> +// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.d, #1 \0Afsub $0.d, p0/m, $0.d, $2.d\0A", "=w,0,w,~{p0}"(<vscale x 8 x half> %inout1, <vscale x 8 x half> %in2)
> +
> +SVFLOAT_TEST(__SVFloat32_t,s);
> +// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.s, #1 \0Afsub $0.s, p0/m, $0.s, $2.s\0A", "=w,0,w,~{p0}"(<vscale x 4 x float> %inout1, <vscale x 4 x float> %in2)
> +SVFLOAT_TEST(__SVFloat32_t,d);
> +// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.d, #1 \0Afsub $0.d, p0/m, $0.d, $2.d\0A", "=w,0,w,~{p0}"(<vscale x 4 x float> %inout1, <vscale x 4 x float> %in2)
> +
> +SVFLOAT_TEST(__SVFloat64_t,s);
> +// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.s, #1 \0Afsub $0.s, p0/m, $0.s, $2.s\0A", "=w,0,w,~{p0}"(<vscale x 2 x double> %inout1, <vscale x 2 x double> %in2)
> +SVFLOAT_TEST(__SVFloat64_t,d);
> +// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.d, #1 \0Afsub $0.d, p0/m, $0.d, $2.d\0A", "=w,0,w,~{p0}"(<vscale x 2 x double> %inout1, <vscale x 2 x double> %in2)
> +
> +#define SVFLOAT_TEST_Y(DT, KIND)\
> +__SVBool_t func_float_y_##KIND(DT in1, DT in2)\
> +{\
> +  __SVBool_t out;\
> +  asm volatile (\
> +    "fmul %[out]." #KIND ", %[in1]." #KIND ", %[in2]." #KIND "\n"\
> +    : [out] "=w" (out)\
> +    :  [in1] "w" (in1),\
> +      [in2] "y" (in2)\
> +    :);\
> +  return out;\
> +}
> +
> +SVFLOAT_TEST_Y(__SVFloat16_t,h);
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "fmul $0.h, $1.h, $2.h\0A", "=w,w,y"(<vscale x 8 x half> %in1, <vscale x 8 x half> %in2)
> +SVFLOAT_TEST_Y(__SVFloat32_t,s);
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "fmul $0.s, $1.s, $2.s\0A", "=w,w,y"(<vscale x 4 x float> %in1, <vscale x 4 x float> %in2)
> +SVFLOAT_TEST_Y(__SVFloat64_t,d);
> +// CHECK: call <vscale x 16 x i1> asm sideeffect "fmul $0.d, $1.d, $2.d\0A", "=w,w,y"(<vscale x 2 x double> %in1, <vscale x 2 x double> %in2)
> +
> +
> +// Another test for floats to include h suffix
> +
> +#define SVFLOAT_CVT_TEST(DT1,KIND1,DT2,KIND2)\
> +DT1 func_float_cvt_##DT1##KIND1##DT2##KIND2(DT2 in1)\
> +{\
> +  DT1 out1 ;\
> +  asm volatile (\
> +    "ptrue p0." #KIND2 ", #1 \n"\
> +    "fcvt %[out1]." #KIND1 ", p0/m, %[in1]." #KIND2 "\n"\
> +    : [out1] "=w" (out1)\
> +    : [in1] "w" (in1)\
> +    : "p0");\
> +  return out1 ;\
> +}\
> +
> +SVFLOAT_CVT_TEST(__SVFloat64_t,d,__SVFloat32_t,s);
> +// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.s, #1 \0Afcvt $0.d, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in1)
> +SVFLOAT_CVT_TEST(__SVFloat64_t,d,__SVFloat16_t,h);
> +// CHECK: call <vscale x 2 x double> asm sideeffect "ptrue p0.h, #1 \0Afcvt $0.d, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in1)
> +SVFLOAT_CVT_TEST(__SVFloat32_t,s,__SVFloat16_t,h);
> +// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.h, #1 \0Afcvt $0.s, p0/m, $1.h\0A", "=w,w,~{p0}"(<vscale x 8 x half> %in1)
> +SVFLOAT_CVT_TEST(__SVFloat32_t,s,__SVFloat64_t,d);
> +// CHECK: call <vscale x 4 x float> asm sideeffect "ptrue p0.d, #1 \0Afcvt $0.s, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in1)
> +SVFLOAT_CVT_TEST(__SVFloat16_t,h,__SVFloat64_t,d);
> +// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.d, #1 \0Afcvt $0.h, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 2 x double> %in1)
> +SVFLOAT_CVT_TEST(__SVFloat16_t,h,__SVFloat32_t,s);
> +// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.s, #1 \0Afcvt $0.h, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in1)
> +
> +//Test a mix of float and ints
> +SVFLOAT_CVT_TEST(__SVInt16_t,h,__SVFloat32_t,s);
> +// CHECK: call <vscale x 8 x i16> asm sideeffect "ptrue p0.s, #1 \0Afcvt $0.h, p0/m, $1.s\0A", "=w,w,~{p0}"(<vscale x 4 x float> %in1)
> +SVFLOAT_CVT_TEST(__SVFloat16_t,s,__SVUint32_t,d);
> +// CHECK: call <vscale x 8 x half> asm sideeffect "ptrue p0.d, #1 \0Afcvt $0.s, p0/m, $1.d\0A", "=w,w,~{p0}"(<vscale x 4 x i32> %in1)
> diff --git a/clang/test/CodeGen/aarch64-sve-inline-asm-negative-test.c b/clang/test/CodeGen/aarch64-sve-inline-asm-negative-test.c
> new file mode 100644
> index 000000000000..ffe7a4194694
> --- /dev/null
> +++ b/clang/test/CodeGen/aarch64-sve-inline-asm-negative-test.c
> @@ -0,0 +1,21 @@
> +// REQUIRES: aarch64-registered-target
> +
> +// RUN: not %clang_cc1 -triple aarch64-none-linux-gnu -target-feature +sve -fallow-half-arguments-and-returns \
> +// RUN:   -target-feature +neon -S -O1 -o - %s | FileCheck %s
> +
> +// Assembler error
> +// Output constraint : Set a vector constraint on an integer
> +__SVFloat32_t funcB2()
> +{
> +  __SVFloat32_t ret ;
> +  asm volatile (
> +    "fmov %[ret], wzr \n"
> +    : [ret] "=w" (ret)
> +    :
> +    :);
> +
> +  return ret ;
> +}
> +
> +// CHECK: funcB2
> +// CHECK-ERROR: error: invalid operand for instruction
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/537655340.10372.1584469280408.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnHdudUpVJrr3EXxkHpa6SQ8sxCYXeQdvagxWLkkH0_vA%40mail.gmail.com.
