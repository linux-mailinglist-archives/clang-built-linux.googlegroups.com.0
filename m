Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5FAWDZQKGQEB4K6PMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5171851F9
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 00:00:05 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id y82sf6444443oig.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:00:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584140404; cv=pass;
        d=google.com; s=arc-20160816;
        b=lNm9vS6WOcw74sy+/PYPRqUJCzifZBy+OHPMcxD13qEDAS+xM9ieyZYrq2txv32SRn
         0d3IjsWROlT4Cb4hVHbU3iZFq7AcvZ7BduQoyWoHcs4OjnM02E1gpUSScAazbPtHvyEr
         KdMlXDSYKQs/pGzgnm/FW6nxyF8O9ASttliUWKtmep5RWo/3X5r/B827mkS6nWg4wwQE
         f4HiMiVsz3khK18E38pWC4KZWIqGkgWfc2ReVjW+lFx6CiV+TVDVGjvYAoehQBJoFjca
         Xo5ci98l+rMUrWltkc+JK3AGlmfr46HvFdQwfSjcI5zm6bUVR72GZ53sScu5qcxfIktb
         U6ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QeFF3azRaKLp1QSUnZnNACAK/1Fw4WvxWg32Xsu1pQI=;
        b=dkvBYedTFror51R3SXPWZyav9e0K5sla8B6jiJznsEQs4cA/vSCelcpUpX5JBxbywG
         lvKSS5Ci7CKZhtUtSajhBEUY17QeThYysgt/WHYW6Y4KynOq391+UgI+ErBWI1oGzTci
         dLrpvn9Ztygf8ButEF4sJGBC8dn77ey8iRxHdRuousvPLhJeY9gQD77nfZOHYxZoGjo/
         k3FoVcUZpIood/Bnht4gSBmK6pNhQE5W0Grn3AfUlDczP8p2SMuy17W5aNDNSNtCUZiY
         wFTM8oK9ESYadPjnjpqzU8nPEYIbgh3Sxn242ygIurcBkNWjcPk63p9mCPxvcKl5j3dN
         jphQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DSkiAOqD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QeFF3azRaKLp1QSUnZnNACAK/1Fw4WvxWg32Xsu1pQI=;
        b=hZuTBLbDNghNyRghKuJC2wHZwwXrJ+w49e0UPV7i25kFFPPYz4lxMp1BqYd4y75HsA
         5F0vp8MPMsd2huUvIIJMDVvldik3qBbA6S9+hVpJ/NTKwMA5Hd3yx40V08ysWNRvEVet
         HIYidxI6eZL1Wp9+s87MAXQCewlcGMkiiTs/KB/zgAx/zSNrdlkMOt1F1haaucUWhV1R
         tj1Wz0v3dmKZFl4ZLaxWwZb3j8vVLYxfBJMi/Jy/Jlm98euEv8lHToAUNOf4PQvLiOsI
         I+iFhrCP3zkcls11pLlCJZ/V0samYSTzGEGgnryqDuN99gH5RraPL017Zd8uxpsjGu/d
         W2dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QeFF3azRaKLp1QSUnZnNACAK/1Fw4WvxWg32Xsu1pQI=;
        b=fYaqClhAZMGaE/BdD2Vrb7rCasZT7fthij2HQQ45r0A6t/68W8jswukmRwvQEiRVNm
         jbSQloJM4WtUKq+OOUfuQIO1dyacv2mU7BulXN/evrzN6dLe51vq8rsyUbSNY/blLBop
         pVhTREFphBomBQbKm04lU+94NatzQ62oFylRTCG2qxGhqVduhRY+kcdFbdbj01V+C/5N
         avjE2F8hTbA2CbDNabhJy6JRUWlbavD0VtkJwG2ALZKzubMSgNGy4p0Ss6RzcF0AARkU
         zDcIAvO/EQS1zfPM2oJK7WpPAruzH7CnipoE5NXSkiUhaHLzkNx6rNVBXucwOminjekC
         3VEg==
X-Gm-Message-State: ANhLgQ3G2UR5dubUWqildEb9vJqVbeJzgkqSrG6xc5z8tE9wTB/t61LW
	3uFeS2RTYcxeV7tB2fOeMAA=
X-Google-Smtp-Source: ADFU+vuEl+czv3qlsLo96PogSRILXC1/xfZ3BAjGNEUP7gHbGuKo76bMsdV9llnSSi8wwGco3jEZUg==
X-Received: by 2002:a05:6830:1e09:: with SMTP id s9mr12520228otr.149.1584140404666;
        Fri, 13 Mar 2020 16:00:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1c03:: with SMTP id c3ls3266741oic.8.gmail; Fri, 13 Mar
 2020 16:00:04 -0700 (PDT)
X-Received: by 2002:aca:dac5:: with SMTP id r188mr9117520oig.176.1584140404304;
        Fri, 13 Mar 2020 16:00:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584140404; cv=none;
        d=google.com; s=arc-20160816;
        b=c+ZdB3HZS4TeAVwK13ziLGGnt0lqoVLugwGDieznA2HpD38dA2kmrq6Md95L6D1Jwk
         rcgitUMh10Sr4sMLOd/KZdI+pSEbYkaFfIgz0g/vhitVwjypqL+MNuop9CipJ47fKRUw
         0uVgzw/TlumFfIN9tNtQ79Byyncl5LpAX94OdDJmrJDbDUhaBUFYTY4/g3XR7vA3JJNM
         VyVMQfly5hCT0ToasNuPhiXsHNOR4GgPXW5nEIf+1gKP//8IHvJ6VlQ+eWldI8oX2vCi
         8zrHwVIPahPz/lVYhbe6EuoRMN9pwAzjewOzA57AqG4QWxqpnxCw3pTsD6rklUsUVW1f
         AscQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uG9oiNHydG2ZwE3P6G8J/OTmytrX5j9pDKgrrJxP6Xk=;
        b=uvdT0L8rortvPNhfdegIWTcXeistlSpuI8nP0aI/QSuL06ce/PH6ptIyRFpbrTlqaz
         G5hV26WpCtISpzKb10j5cEpicnthWEhxJbuiwcVaArmLgF09W2wFpzTMIgLaZGag2dTw
         jvDHp6+KhOTCc0kA7mBTm1G73+GIAhmETo0psE3FzhjBzXHo1AGu0lk1D3FOo3QDp2iy
         4zY3tM8KJPn8RG+iX9Ja6GQf76q4MZJy7s+rgEI3iod2t6ZvBfkc0DDjbX3GuDsPMDHO
         zbT2dLzo10etg1R3aNSOyQxSmUmBKV0cMMJ3o3yP3ldnNekgVrDpziEey+pCtNkTHkEa
         SJtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DSkiAOqD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id w2si708213otl.3.2020.03.13.16.00.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 16:00:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id f16so5010330plj.4
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 16:00:04 -0700 (PDT)
X-Received: by 2002:a17:90a:9a90:: with SMTP id e16mr12116813pjp.164.1584140403107;
 Fri, 13 Mar 2020 16:00:03 -0700 (PDT)
MIME-Version: 1.0
References: <278254926.9984.1584139456203.JavaMail.javamailuser@localhost>
In-Reply-To: <278254926.9984.1584139456203.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Mar 2020 15:59:50 -0700
Message-ID: <CAKwvOdkOn8=GVRjVKMkmKgZ81uKBj7xh_XEoXX=kK-2CRKoXNw@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
 - Build # 27 - Successful!
To: CI Notify <ci_notify@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Linaro LLVM <llvm@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DSkiAOqD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

Sami has already reached out to Ehud, who fixed this, and Sami verified.

On Fri, Mar 13, 2020 at 3:44 PM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-arm-mainline-allyesconfig
>
> Culprit:
> <cut>
> commit fcc2238b8bfb9498b46a48d219193de8c00a25a0
> Author: Ehud Katz <ehudkatz@gmail.com>
> Date:   Fri Mar 13 15:32:43 2020 +0200
>
>     [SCEV] Add missing cache queries
>
>     Calculating SCEVs can be cumbersome, and may take very long time (even
>     hours, for very long expressions). To prevent recalculating expressions
>     over and over again, we cache them.
>     This change add cache queries to key positions, to prevent recalculation
>     of the expressions.
>
>     Fix PR43571.
>
>     Differential Revision: https://reviews.llvm.org/D70097
> </cut>
>
> First few build errors in logs:
> 00:14:41 clang-11: error: unable to execute command: Aborted (core dumped)
> 00:14:41 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> 00:14:41 make[3]: *** [drivers/input/joystick/db9.o] Error 254
> 00:15:25 make[2]: *** [drivers/input/joystick] Error 2
> 00:17:08 clang-11: error: unable to execute command: Aborted (core dumped)
> 00:17:08 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> 00:17:08 make[3]: *** [drivers/net/slip/slip.o] Error 254
> 00:17:09 make[2]: *** [drivers/net/slip] Error 2
> 00:17:47 make[1]: *** [drivers/input] Error 2
> 00:27:10 clang-11: error: unable to execute command: Aborted (core dumped)
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
> rr[llvm_branch]="43252c1b17b9a199c6a1673996cf61e1cfff90c8"
>
> Results regressed to (for first_bad == fcc2238b8bfb9498b46a48d219193de8c00a25a0)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 18455
>
> from (for last_good == a0c15ed46056a5c8bc6f86d6d636b6375354efc6)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 18458
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/build-fcc2238b8bfb9498b46a48d219193de8c00a25a0/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/build-a0c15ed46056a5c8bc6f86d6d636b6375354efc6/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/
>
> Reproduce builds:
> <cut>
> mkdir investigate-llvm-fcc2238b8bfb9498b46a48d219193de8c00a25a0
> cd investigate-llvm-fcc2238b8bfb9498b46a48d219193de8c00a25a0
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd llvm
>
> # Reproduce first_bad build
> git checkout --detach fcc2238b8bfb9498b46a48d219193de8c00a25a0
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach a0c15ed46056a5c8bc6f86d6d636b6375354efc6
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allyesconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/27/consoleText
>
> Full commit:
> <cut>
> commit fcc2238b8bfb9498b46a48d219193de8c00a25a0
> Author: Ehud Katz <ehudkatz@gmail.com>
> Date:   Fri Mar 13 15:32:43 2020 +0200
>
>     [SCEV] Add missing cache queries
>
>     Calculating SCEVs can be cumbersome, and may take very long time (even
>     hours, for very long expressions). To prevent recalculating expressions
>     over and over again, we cache them.
>     This change add cache queries to key positions, to prevent recalculation
>     of the expressions.
>
>     Fix PR43571.
>
>     Differential Revision: https://reviews.llvm.org/D70097
> ---
>  llvm/include/llvm/Analysis/ScalarEvolution.h |  2 +-
>  llvm/lib/Analysis/ScalarEvolution.cpp        | 49 +++++++++++++++++++++-------
>  2 files changed, 39 insertions(+), 12 deletions(-)
>
> diff --git a/llvm/include/llvm/Analysis/ScalarEvolution.h b/llvm/include/llvm/Analysis/ScalarEvolution.h
> index faedc1b241c..fcb5c887acd 100644
> --- a/llvm/include/llvm/Analysis/ScalarEvolution.h
> +++ b/llvm/include/llvm/Analysis/ScalarEvolution.h
> @@ -1899,7 +1899,7 @@ private:
>    /// otherwise.  The second component is the `FoldingSetNodeID` that was
>    /// constructed to look up the SCEV and the third component is the insertion
>    /// point.
> -  std::tuple<const SCEV *, FoldingSetNodeID, void *>
> +  std::tuple<SCEV *, FoldingSetNodeID, void *>
>    findExistingSCEVInCache(int SCEVType, ArrayRef<const SCEV *> Ops);
>
>    FoldingSet<SCEV> UniqueSCEVs;
> diff --git a/llvm/lib/Analysis/ScalarEvolution.cpp b/llvm/lib/Analysis/ScalarEvolution.cpp
> index eeb5e507b0b..debd03bf47b 100644
> --- a/llvm/lib/Analysis/ScalarEvolution.cpp
> +++ b/llvm/lib/Analysis/ScalarEvolution.cpp
> @@ -2452,6 +2452,11 @@ const SCEV *ScalarEvolution::getAddExpr(SmallVectorImpl<const SCEV *> &Ops,
>    if (Depth > MaxArithDepth || hasHugeExpression(Ops))
>      return getOrCreateAddExpr(Ops, Flags);
>
> +  if (SCEV *S = std::get<0>(findExistingSCEVInCache(scAddExpr, Ops))) {
> +    static_cast<SCEVAddExpr *>(S)->setNoWrapFlags(Flags);
> +    return S;
> +  }
> +
>    // Okay, check to see if the same value occurs in the operand list more than
>    // once.  If so, merge them together into an multiply expression.  Since we
>    // sorted the list, these values are required to be adjacent.
> @@ -2931,6 +2936,11 @@ const SCEV *ScalarEvolution::getMulExpr(SmallVectorImpl<const SCEV *> &Ops,
>    if (Depth > MaxArithDepth || hasHugeExpression(Ops))
>      return getOrCreateMulExpr(Ops, Flags);
>
> +  if (SCEV *S = std::get<0>(findExistingSCEVInCache(scMulExpr, Ops))) {
> +    static_cast<SCEVMulExpr *>(S)->setNoWrapFlags(Flags);
> +    return S;
> +  }
> +
>    // If there are any constants, fold them together.
>    unsigned Idx = 0;
>    if (const SCEVConstant *LHSC = dyn_cast<SCEVConstant>(Ops[0])) {
> @@ -3193,6 +3203,14 @@ const SCEV *ScalarEvolution::getUDivExpr(const SCEV *LHS,
>           getEffectiveSCEVType(RHS->getType()) &&
>           "SCEVUDivExpr operand types don't match!");
>
> +  FoldingSetNodeID ID;
> +  ID.AddInteger(scUDivExpr);
> +  ID.AddPointer(LHS);
> +  ID.AddPointer(RHS);
> +  void *IP = nullptr;
> +  if (const SCEV *S = UniqueSCEVs.FindNodeOrInsertPos(ID, IP))
> +    return S;
> +
>    if (const SCEVConstant *RHSC = dyn_cast<SCEVConstant>(RHS)) {
>      if (RHSC->getValue()->isOne())
>        return LHS;                               // X udiv 1 --> x
> @@ -3239,9 +3257,24 @@ const SCEV *ScalarEvolution::getUDivExpr(const SCEV *LHS,
>                              AR->getLoop(), SCEV::FlagAnyWrap)) {
>              const APInt &StartInt = StartC->getAPInt();
>              const APInt &StartRem = StartInt.urem(StepInt);
> -            if (StartRem != 0)
> -              LHS = getAddRecExpr(getConstant(StartInt - StartRem), Step,
> -                                  AR->getLoop(), SCEV::FlagNW);
> +            if (StartRem != 0) {
> +              const SCEV *NewLHS =
> +                  getAddRecExpr(getConstant(StartInt - StartRem), Step,
> +                                AR->getLoop(), SCEV::FlagNW);
> +              if (LHS != NewLHS) {
> +                LHS = NewLHS;
> +
> +                // Reset the ID to include the new LHS, and check if it is
> +                // already cached.
> +                ID.clear();
> +                ID.AddInteger(scUDivExpr);
> +                ID.AddPointer(LHS);
> +                ID.AddPointer(RHS);
> +                IP = nullptr;
> +                if (const SCEV *S = UniqueSCEVs.FindNodeOrInsertPos(ID, IP))
> +                  return S;
> +              }
> +            }
>            }
>          }
>        // (A*B)/C --> A*(B/C) if safe and B/C can be folded.
> @@ -3306,12 +3339,6 @@ const SCEV *ScalarEvolution::getUDivExpr(const SCEV *LHS,
>      }
>    }
>
> -  FoldingSetNodeID ID;
> -  ID.AddInteger(scUDivExpr);
> -  ID.AddPointer(LHS);
> -  ID.AddPointer(RHS);
> -  void *IP = nullptr;
> -  if (const SCEV *S = UniqueSCEVs.FindNodeOrInsertPos(ID, IP)) return S;
>    SCEV *S = new (SCEVAllocator) SCEVUDivExpr(ID.Intern(SCEVAllocator),
>                                               LHS, RHS);
>    UniqueSCEVs.InsertNode(S, IP);
> @@ -3537,7 +3564,7 @@ ScalarEvolution::getGEPExpr(GEPOperator *GEP,
>    return getAddExpr(BaseExpr, TotalOffset, Wrap);
>  }
>
> -std::tuple<const SCEV *, FoldingSetNodeID, void *>
> +std::tuple<SCEV *, FoldingSetNodeID, void *>
>  ScalarEvolution::findExistingSCEVInCache(int SCEVType,
>                                           ArrayRef<const SCEV *> Ops) {
>    FoldingSetNodeID ID;
> @@ -3545,7 +3572,7 @@ ScalarEvolution::findExistingSCEVInCache(int SCEVType,
>    ID.AddInteger(SCEVType);
>    for (unsigned i = 0, e = Ops.size(); i != e; ++i)
>      ID.AddPointer(Ops[i]);
> -  return std::tuple<const SCEV *, FoldingSetNodeID, void *>(
> +  return std::tuple<SCEV *, FoldingSetNodeID, void *>(
>        UniqueSCEVs.FindNodeOrInsertPos(ID, IP), std::move(ID), IP);
>  }
>
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/278254926.9984.1584139456203.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkOn8%3DGVRjVKMkmKgZ81uKBj7xh_XEoXX%3DkK-2CRKoXNw%40mail.gmail.com.
