Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZFT4L2AKGQE7V7GLKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AD51ACEE5
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 19:46:13 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id z18sf2713980pfg.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 10:46:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587059172; cv=pass;
        d=google.com; s=arc-20160816;
        b=LmkMntORUuvPu5mUTyagSCIBLQYrGqovPynQ7MAFAG4Pon8In9XYMwy0oxV7Jcpc0n
         AQ3Ra7QnOFBvF06v8Ls5jgxkQacdt2JVIO6u+ugUhkPesoFu4p9+SjInOtDrCBFMxhlG
         UW5aYR1kBlDdUBkhmjN8lpWXdLVry1/oeaZ2uO3aOthh9/5JBBwG5xXjoKHYeZQk35aW
         w0UFAPAUMpsk2ejkyrnvciEdJJtLWutVgLlGcmhLJGzcmdn95fY5VqKNG+vTiRj5c6yq
         YxXOSvfuBvLB4RU0gz5zihteZnxbusBNk/VMNMPv/0Jaozdok06KNJHZ+dbFVO6XDMJT
         /2yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=R+FNjIdZBF2J/t7DA9On+HXKEGL6uzq7DcN0d6m7xc8=;
        b=WNoUlivpQrt6rizO1FeEyu/fgRu3uNaZC5MMGpFBuFFWlJggukXkPMFEGYF0TyqeaM
         dddVK4VfNceGpdtLgyKwux2h7rCzb2kHFuh5bcoNZLhuM7CWLWVBEAQDp7g0TGcxSziU
         VKuQdn8QhM1Dt+W6dGAfkGskYUeGTlI7i3MD7vmJbaHrJcAYKwBrs7unA1+6IV5LWCTi
         nQwtUqPE3mxVTdCOSY2yDx2WBdC2D2QT9tvNwE10QxRM7g33cV6U5dV2jfNCkoh1jpOJ
         buHcMx+WGALhHo5Xs6UgNS84O4w8KFGmsjO+DOpfDjszaQmLS3kw9U53cmwhr4owCaKg
         RkTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VmIlB3Sn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R+FNjIdZBF2J/t7DA9On+HXKEGL6uzq7DcN0d6m7xc8=;
        b=d2qCYIfrnuHRKxAwpZPdEI4aFTR6o8e3XIqNMkv8aQ5r6HRYy2v1Ta0BlID0IF3plk
         /orS8cSp80OXt1xjgXqJEdGFSONPyH1Qhqlyse3N2XOQ6e6fXffFYOSHtz57Y7939UFa
         uRsFiY2gBsMJL6DZDCuDYoXrkuOFeD2WrMvMqpc6pJbgI0Dt3PYPh/TY/pMKRN4/7jSY
         s5x1/YMpSnaGOjHU4L7PenrpAMIXuN+hF6Ku//FITCXQiyCIaI5+hRi4RefuR6CWnFnl
         TP4mdWGpW15lIzaJfvFgopC1j/GDyH+o5JidLF4luUZDxUCuL1prLZWcwr7EkzoEyxFZ
         Sq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R+FNjIdZBF2J/t7DA9On+HXKEGL6uzq7DcN0d6m7xc8=;
        b=cgk05MOpKPhv/f6DZJOwMbiYoL1ynj5Dn96dvsmPqn6CxTigsx0uyQvPhHCGvC/mYx
         mQ5LzopvaBipyZEUdQP1AdiHaDxYLiYZEFQjO9HlpoCkpC4+EsVEZ+hfyo9qgWOcKIhT
         oCC/obyPigOAJo6uD4w6UUpRmSv7katbQ+I281zyN5rXf39dta9xazGt3UPQET1sUVmF
         oAqV6qs9yRnUqEHUEmljfyKAI+dZVH0ss97jUZkuOxlkAeVmgYJp63cLmUZJQXmnuoTl
         CalAUbc81tIu6fMLRo4e+hQ65fH9fQFZvsQGJCMen+5eRUoI97BB2zobjF5bmnJUK04w
         zVYA==
X-Gm-Message-State: AGi0PubosxYF7pO9atlQKiQxxE5b2ZRGBuJ9u/r9eXV1CehUFdEc8Ghg
	/BqIZHiloxtAll0HCRndxQ8=
X-Google-Smtp-Source: APiQypJXdbO8bW/G8d69A0pr+VgZSBv0tCo6RcIagz8KPChf+DcFARNL5YfSWCUbhPyDqXJoOqmIrg==
X-Received: by 2002:a62:5c1:: with SMTP id 184mr22828204pff.68.1587059172408;
        Thu, 16 Apr 2020 10:46:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:84c6:: with SMTP id k189ls3370873pgd.2.gmail; Thu, 16
 Apr 2020 10:46:12 -0700 (PDT)
X-Received: by 2002:a62:fc02:: with SMTP id e2mr7264929pfh.195.1587059171930;
        Thu, 16 Apr 2020 10:46:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587059171; cv=none;
        d=google.com; s=arc-20160816;
        b=a2hic8ERUGGGf4NLDCiul/afyLqzfjbj0DG04+KzPCAEYhw4UcfJDc0k0mFUuqlM0b
         4eBD/+XEM8KrTWE/MgwOV4PyJ17hYis4ZLPf4kqKFy84aq5iUOJGEmyOF8e85EZ7Pnyi
         Wo/Ty6yccsw3+eSGai4f3c7EtjI9U8E0tjquOkuR8FahCClqEiPRrAPzW419fWjh1RuF
         +F7UwMw5vmgcoFMY6gJNVI2VCWiPSO5yJ+uLdal8+ZYVabflht4YAToYj4mcOKE8Mt2F
         G7QswMvRWSJrYZMEW0Cc9CfKVyHSntF2h0VP4HJsddfYFXW9+dlkygctQh2f9yl9lMXx
         4WsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+ZKHJj942Au6rt/C6/SHVueWUpSPHMO2DQHXTJgERA0=;
        b=WrARoiT4rws68njLYhsU5HynqTfMJRaTIzmNkf/86qKlQwXWr9wtntZoVj7Jm0rb2t
         lig2p5/POsxKntrl6okDzCM+qUfNdKvIKhg7h9Ag/b8Xvq6oPbXfTjmhy8aXnD9SRrFr
         TyfRpZKK0unEDUMibcdNHPDFZK/kTXnpQ5yD7b4Y7J/CnvHdzCOcK3OyJmOLtkDRN1bG
         SoGAtEYJA5FUHD4UUYGpaRfjNPJ9yFbtqdgoHpOTz0V1WtBupD4r6g8Ug49FKE4tyaCK
         ZM5T9e0c5PTSmwmILBvMUWMPRE9rO34hiZOxf/P3HhrPFVlTSXi35NsCp1XSKgjDuFzE
         G3Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VmIlB3Sn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id z1si1206760plo.3.2020.04.16.10.46.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 10:46:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id u65so1990937pfb.4
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 10:46:11 -0700 (PDT)
X-Received: by 2002:a63:6546:: with SMTP id z67mr20062509pgb.10.1587059171286;
 Thu, 16 Apr 2020 10:46:11 -0700 (PDT)
MIME-Version: 1.0
References: <1635078525.17683.1587056556857.JavaMail.javamailuser@localhost>
In-Reply-To: <1635078525.17683.1587056556857.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Apr 2020 10:46:00 -0700
Message-ID: <CAKwvOd=cH6OEuggvVBM61KA17ZpiAMV501hXeewQT7kozKuJww@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
 - Build # 82 - Successful!
To: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VmIlB3Sn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e
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

Hey nice boot tests!

I assume there was a machine timeout?
https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/build-e3ac79a649056865d47815446a95503bd4bd8908/04-boot_linux/console.log

Was allmodconfig booting on aarch64 previously? (Is this a regression,
or are the boot tests new and red)?

On Thu, Apr 16, 2020 at 10:02 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
>
> Culprit:
> <cut>
> commit e3ac79a649056865d47815446a95503bd4bd8908
> Author: Richard Smith <richard@metafoo.co.uk>
> Date:   Thu Mar 19 12:38:40 2020 -0700
>
>     Teach TreeTransform to substitute into resolved TemplateArguments.
>
>     This comes up when substituting into an already-substituted template
>     argument during constraint satisfaction checking.
>
>     (cherry picked from commit b20ab412bf838a8a87e5cc1c8c6399c3c9255354)
> </cut>
>
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
> rr[llvm_branch]="edbe962459da6e3b7b4168118f93a77847b54e02"
>
> Results regressed to (for first_bad == e3ac79a649056865d47815446a95503bd4bd8908)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 27574
> # linux build successful:
> all
> # First few build errors in logs:
> # 00:00:00 +++ grep ' error:\|^ERROR:\|: undefined reference\|\] Error '
>
> from (for last_good == 321d929774c6fa0767e4ae5eb0881ad15e7a4664)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 27574
> # linux build successful:
> all
> # linux boot successful:
> boot
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/build-e3ac79a649056865d47815446a95503bd4bd8908/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/build-321d929774c6fa0767e4ae5eb0881ad15e7a4664/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/
>
> Reproduce builds:
> <cut>
> mkdir investigate-llvm-e3ac79a649056865d47815446a95503bd4bd8908
> cd investigate-llvm-e3ac79a649056865d47815446a95503bd4bd8908
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/manifests/build-baseline.sh --fail
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/manifests/build-parameters.sh --fail
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/test.sh --fail
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd llvm
>
> # Reproduce first_bad build
> git checkout --detach e3ac79a649056865d47815446a95503bd4bd8908
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach 321d929774c6fa0767e4ae5eb0881ad15e7a4664
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/consoleText
>
> Full commit:
> <cut>
> commit e3ac79a649056865d47815446a95503bd4bd8908
> Author: Richard Smith <richard@metafoo.co.uk>
> Date:   Thu Mar 19 12:38:40 2020 -0700
>
>     Teach TreeTransform to substitute into resolved TemplateArguments.
>
>     This comes up when substituting into an already-substituted template
>     argument during constraint satisfaction checking.
>
>     (cherry picked from commit b20ab412bf838a8a87e5cc1c8c6399c3c9255354)
> ---
>  clang/lib/Sema/TreeTransform.h               | 85 +++++++++++++---------------
>  clang/test/SemaTemplate/subst-into-subst.cpp | 34 +++++++++++
>  2 files changed, 72 insertions(+), 47 deletions(-)
>
> diff --git a/clang/lib/Sema/TreeTransform.h b/clang/lib/Sema/TreeTransform.h
> index 0305954a278e..30fb089742ee 100644
> --- a/clang/lib/Sema/TreeTransform.h
> +++ b/clang/lib/Sema/TreeTransform.h
> @@ -4022,50 +4022,8 @@ template<typename Derived>
>  void TreeTransform<Derived>::InventTemplateArgumentLoc(
>                                           const TemplateArgument &Arg,
>                                           TemplateArgumentLoc &Output) {
> -  SourceLocation Loc = getDerived().getBaseLocation();
> -  switch (Arg.getKind()) {
> -  case TemplateArgument::Null:
> -    llvm_unreachable("null template argument in TreeTransform");
> -    break;
> -
> -  case TemplateArgument::Type:
> -    Output = TemplateArgumentLoc(Arg,
> -               SemaRef.Context.getTrivialTypeSourceInfo(Arg.getAsType(), Loc));
> -
> -    break;
> -
> -  case TemplateArgument::Template:
> -  case TemplateArgument::TemplateExpansion: {
> -    NestedNameSpecifierLocBuilder Builder;
> -    TemplateName Template = Arg.getAsTemplateOrTemplatePattern();
> -    if (DependentTemplateName *DTN = Template.getAsDependentTemplateName())
> -      Builder.MakeTrivial(SemaRef.Context, DTN->getQualifier(), Loc);
> -    else if (QualifiedTemplateName *QTN = Template.getAsQualifiedTemplateName())
> -      Builder.MakeTrivial(SemaRef.Context, QTN->getQualifier(), Loc);
> -
> -    if (Arg.getKind() == TemplateArgument::Template)
> -      Output = TemplateArgumentLoc(Arg,
> -                                   Builder.getWithLocInContext(SemaRef.Context),
> -                                   Loc);
> -    else
> -      Output = TemplateArgumentLoc(Arg,
> -                                   Builder.getWithLocInContext(SemaRef.Context),
> -                                   Loc, Loc);
> -
> -    break;
> -  }
> -
> -  case TemplateArgument::Expression:
> -    Output = TemplateArgumentLoc(Arg, Arg.getAsExpr());
> -    break;
> -
> -  case TemplateArgument::Declaration:
> -  case TemplateArgument::Integral:
> -  case TemplateArgument::Pack:
> -  case TemplateArgument::NullPtr:
> -    Output = TemplateArgumentLoc(Arg, TemplateArgumentLocInfo());
> -    break;
> -  }
> +  Output = getSema().getTrivialTemplateArgumentLoc(
> +      Arg, QualType(), getDerived().getBaseLocation());
>  }
>
>  template<typename Derived>
> @@ -4075,12 +4033,45 @@ bool TreeTransform<Derived>::TransformTemplateArgument(
>    const TemplateArgument &Arg = Input.getArgument();
>    switch (Arg.getKind()) {
>    case TemplateArgument::Null:
> -  case TemplateArgument::Integral:
>    case TemplateArgument::Pack:
> -  case TemplateArgument::Declaration:
> -  case TemplateArgument::NullPtr:
>      llvm_unreachable("Unexpected TemplateArgument");
>
> +  case TemplateArgument::Integral:
> +  case TemplateArgument::NullPtr:
> +  case TemplateArgument::Declaration: {
> +    // Transform a resolved template argument straight to a resolved template
> +    // argument. We get here when substituting into an already-substituted
> +    // template type argument during concept satisfaction checking.
> +    QualType T = Arg.getNonTypeTemplateArgumentType();
> +    QualType NewT = getDerived().TransformType(T);
> +    if (NewT.isNull())
> +      return true;
> +
> +    ValueDecl *D = Arg.getKind() == TemplateArgument::Declaration
> +                       ? Arg.getAsDecl()
> +                       : nullptr;
> +    ValueDecl *NewD = D ? cast_or_null<ValueDecl>(getDerived().TransformDecl(
> +                              getDerived().getBaseLocation(), D))
> +                        : nullptr;
> +    if (D && !NewD)
> +      return true;
> +
> +    if (NewT == T && D == NewD)
> +      Output = Input;
> +    else if (Arg.getKind() == TemplateArgument::Integral)
> +      Output = TemplateArgumentLoc(
> +          TemplateArgument(getSema().Context, Arg.getAsIntegral(), NewT),
> +          TemplateArgumentLocInfo());
> +    else if (Arg.getKind() == TemplateArgument::NullPtr)
> +      Output = TemplateArgumentLoc(TemplateArgument(NewT, /*IsNullPtr=*/true),
> +                                   TemplateArgumentLocInfo());
> +    else
> +      Output = TemplateArgumentLoc(TemplateArgument(NewD, NewT),
> +                                   TemplateArgumentLocInfo());
> +
> +    return false;
> +  }
> +
>    case TemplateArgument::Type: {
>      TypeSourceInfo *DI = Input.getTypeSourceInfo();
>      if (!DI)
> diff --git a/clang/test/SemaTemplate/subst-into-subst.cpp b/clang/test/SemaTemplate/subst-into-subst.cpp
> new file mode 100644
> index 000000000000..69c4a837864d
> --- /dev/null
> +++ b/clang/test/SemaTemplate/subst-into-subst.cpp
> @@ -0,0 +1,34 @@
> +// RUN: %clang_cc1 -std=c++2a -verify %s
> +
> +// When forming and checking satisfaction of atomic constraints, we will
> +// substitute still-dependent template arguments into an expression, and later
> +// substitute into the result. This creates some unique situations; check that
> +// they work.
> +
> +namespace SubstIntoResolvedTypeTemplateArg {
> +  template<int, class> struct X {};
> +
> +  template<class T> concept A = true;
> +  template<class T> concept B = sizeof(T) != 0;
> +  template<class T> concept C = B<X<1, T>>;
> +
> +  int f(A auto); // expected-note {{candidate}}
> +  int f(C auto); // expected-note {{candidate}}
> +  int k1 = f(0); // expected-error {{ambiguous}}
> +
> +  template<class T> concept D = A<T> && B<X<1, T>>;
> +  int f(D auto);
> +  int k2 = f(0); // ok
> +
> +  // The atomic constraint formed from B<X<(int)'\1', T>> is identical to the
> +  // one formed from C, even though the template arguments are written as
> +  // different expressions; the "equivalent" rules are used rather than the
> +  // "identical" rules when matching template arguments in concept-ids.
> +  template<class T> concept E = A<T> && B<X<(int)'\1', T>>;
> +  int g(C auto);
> +  int g(E auto); // expected-note {{candidate}}
> +  int k3 = g(0);
> +
> +  int g(D auto); // expected-note {{candidate}}
> +  int k4 = g(0); // expected-error {{ambiguous}}
> +}
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1635078525.17683.1587056556857.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DcH6OEuggvVBM61KA17ZpiAMV501hXeewQT7kozKuJww%40mail.gmail.com.
