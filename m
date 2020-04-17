Return-Path: <clang-built-linux+bncBCKITOX5G4IPHTHF6QCRUBDKN67XK@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B2E1AD867
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 10:19:00 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id h3sf162006lja.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 01:19:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587111539; cv=pass;
        d=google.com; s=arc-20160816;
        b=HcTGZZwydRTxNNXvzmLmGfKBSgpHpu18Y9sgkgBeiE2qrDKRPtWd5zyMDgVdFZQKiB
         199lokG3mxrxnYPps3PjT9P6fDr3PRYEnsAOitguD9LQREjcpp33qrBBd1ZeFXCLTilj
         CqfJc6xoP5+ZnfaJ5AsFOYo9BDYDc2oXa3PJLmg/Enevwqa2WQ+7GAgJabG5uyq53Hsv
         uNdiUD8NR1HpAc+JLZyFiTsDWqAq37sGWTVdcM4VbweS26GHabbrbxWqXb69XAC2CJDF
         FzAd9oUeynM7XPOGZTZdNJWwyAdUZjRPK3khyyyKg/TcIpYy71CyJkcOyUcXaErCDU83
         +qeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=w2aNI7T/IDo1iyqiMuM5t/V6LgNyuDUJtS1MzrSY6Bc=;
        b=raBsVa7gwOJnHI73v0npaxXQk13VBKPZFAvtNyeoWQI5LtcmNGo1dH/ueQxjyEYtXP
         9kTIMOLLWhegSn0OT5LfV0lbgsuTAF0jAJI7jP6VOiexvOQQJ785xKw77P9ZIwvsn9Du
         Yi9WiyGDSIgd5T4aiY0PG5F2RmIuN9yvt0XPTkV2EdmjD4cZE0BoSChmberWkNgNaKMw
         +GCa25C//rlY1vNU+t++v/3WWriJdl50yhq3gn7OXlCCZrMgFrp+m3d5h0QinZ6cHcBK
         G0vKGF3YUGbrgY8Z5680zfcBatg4OGc7/xngodig+1HXYtju3Fjtg4a8CJeYpxE4t17N
         trtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xG9uz4l0;
       spf=pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc:message-id
         :references:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w2aNI7T/IDo1iyqiMuM5t/V6LgNyuDUJtS1MzrSY6Bc=;
        b=TApQUe/ti7FWf1ylMxgJsO5oks8FXo0ThRIJHMeiegLIDRK8KqbmyvvUohxbMTtFzk
         ZG8r5FgTEWwMPWAkfKYdL/i/LOwhltY5b/JIDmwI5I5lR5oabHxZecC58WMUiRzmvcN4
         F3pJEiaM9e9UpReYz3PRzOLeaUzGwEMHnRtwO/K0VHF3ur6HhMX26xcrp1pnMhaq9JZR
         vKH/G0nOdREZk6XvUN6Xf8z0l12osL2cKy77lbpAsHK5DWDIscuZdUi27UKoB1K7+L5p
         fLrGJG8s30XC7OVF1XWd0hNIYvfxSkCdXdPYxWwwBHKN60NOH7AcGPo3w4J/vKXYq0Zb
         Ri0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:message-id:references:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w2aNI7T/IDo1iyqiMuM5t/V6LgNyuDUJtS1MzrSY6Bc=;
        b=QNqaypwevjS4SWYrPQGZQxvymr9ZKT0hCqtE7xmhDlU2Louejy81+YD3h6B5SlWO6V
         LZwj93PttZZGOHk9jw+uJ1ozup4tOntC3mTEBv39LqSlYlCIFDT/VsDHy274xEkqxWAK
         8Foah3KNsYrdFL2pVSJg2BTTLzafwe3fvUd/pGl6HI+BxaHtFuZHpKjNPC5b8OUsdAP3
         Az9GOtXtfTjo/cQUi2uQLzZdfR25xxzHzQc8r62rWNEtXcBx8almTGJBz4jO0iYv5dFv
         tOH+Yt/M28NtH4WAx4GbdwD0jHtTv0M7JsZQA4kit/ZRhq014jG3SRO4Qmi//vQ4TNaq
         IqdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuazLLb5NYDthXUtd8JwUPEDo+K5yR8e7S6FHFyG4FOT4Y5snfkj
	ZJB+QUr3nlJG3TbpH0dnAks=
X-Google-Smtp-Source: APiQypL4RjmCM32GYiRTXbYXlQq5RDzj78QErNR76W/DH1AIQy7Gn+6RBX0DnVD3xMstyfO4h+3Nfw==
X-Received: by 2002:a19:7008:: with SMTP id h8mr1288669lfc.43.1587111539494;
        Fri, 17 Apr 2020 01:18:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c310:: with SMTP id t16ls213032lff.2.gmail; Fri, 17 Apr
 2020 01:18:58 -0700 (PDT)
X-Received: by 2002:ac2:5455:: with SMTP id d21mr1317481lfn.23.1587111538685;
        Fri, 17 Apr 2020 01:18:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587111538; cv=none;
        d=google.com; s=arc-20160816;
        b=NYd20nqyf0sJ9UCBNgvzuFL6hX4CTldfjoyJ+3l7kkt7CXy36/BXi8kQcfQDMBumAk
         bIdiBwoIxvuO6YjUgsakLd/+2cIv8ZHcBSXNtvKd6eVCCc4ecJsICINOdO819BSi/GkF
         ArfEn5FciSqmfBikTAQDGQxR0nVlXITNCvBeTWxldc+TSk6uf7gdnzOmMBpqS7aVWu3y
         4+edTzPbtfXLp4u8r3nVE2Uhs8l3tJjs2ee0SWSKGOmrGLxfN6/SHtDvzr6vFK3iidB0
         hbggjx8aFon9QwH31ZwGvEBMMzZKgQeUhVDziqGcUIlwHnt9VWAl2IDUYqvbruuCm+uX
         ccQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=MaVJX+wSCUAS1AcYMPTxE8Paco3yxXXI0mhRGHY3od8=;
        b=IOZHd3zcISk9LUQbgVLFKFMdtkVrUhBk/dRSUTLCaPWvS140Ie9iwkw8vQZ3PXcM6/
         VQQHvLG5H4kU9+m6z6lWJOLEGGouUmWbNlxHT/PCqQfqGJXSUgAgAnnHIrCdMM+hKbiF
         UJ8Lk/hLU/hjQ0ppTksDiphQPD7/psm7iMsM+S/yHheBwrGE3Etp1gNxd/3msFgXFBe3
         +HMOPaDq47otZPqCXx/to+6l3Jb/pdqt5WrgO3a6nDpus/HuB8madmpHWeyZlUc58j9N
         tzzYRFvvGrCUoZIzRhfDFV0NLU1Rz0035SW77eSlPtIaXhVir+PlvPcs6pRdtA9d/mGY
         KO1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xG9uz4l0;
       spf=pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id x145si754664lff.2.2020.04.17.01.18.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 01:18:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id r24so1123645ljd.4
        for <clang-built-linux@googlegroups.com>; Fri, 17 Apr 2020 01:18:58 -0700 (PDT)
X-Received: by 2002:a2e:8085:: with SMTP id i5mr1358275ljg.74.1587111538293;
        Fri, 17 Apr 2020 01:18:58 -0700 (PDT)
Received: from ?IPv6:2a00:1370:8117:aa18:2031:f545:18a:af12? ([2a00:1370:8117:aa18:2031:f545:18a:af12])
        by smtp.gmail.com with ESMTPSA id s7sm1038573ljm.58.2020.04.17.01.18.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Apr 2020 01:18:57 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig - Build # 82 -
 Successful!
From: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
In-Reply-To: <CAKwvOd=cH6OEuggvVBM61KA17ZpiAMV501hXeewQT7kozKuJww@mail.gmail.com>
Date: Fri, 17 Apr 2020 11:18:56 +0300
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 CI Notify <ci_notify@linaro.org>
Message-Id: <72111BE5-D78F-4CA6-8246-2EDB31D994AC@linaro.org>
References: <1635078525.17683.1587056556857.JavaMail.javamailuser@localhost>
 <CAKwvOd=cH6OEuggvVBM61KA17ZpiAMV501hXeewQT7kozKuJww@mail.gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Original-Sender: maxim.kuvyrkov@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=xG9uz4l0;       spf=pass
 (google.com: domain of maxim.kuvyrkov@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
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

> On 16 Apr 2020, at 20:46, Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> Hey nice boot tests!
> 
> I assume there was a machine timeout?
> https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/build-e3ac79a649056865d47815446a95503bd4bd8908/04-boot_linux/console.log
> 
> Was allmodconfig booting on aarch64 previously? (Is this a regression,
> or are the boot tests new and red)?

Boot-testing (using QEMU) has been running for several months now.  This particular case seems to be a fluke, though.  Newer builds boot fine: https://ci.linaro.org/job/tcwg_kernel-build-llvm-release-aarch64-mainline-allmodconfig/ .

--
Maxim Kuvyrkov
https://www.linaro.org


> 
> On Thu, Apr 16, 2020 at 10:02 AM <ci_notify@linaro.org> wrote:
>> 
>> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
>> - tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
>> 
>> Culprit:
>> <cut>
>> commit e3ac79a649056865d47815446a95503bd4bd8908
>> Author: Richard Smith <richard@metafoo.co.uk>
>> Date:   Thu Mar 19 12:38:40 2020 -0700
>> 
>>    Teach TreeTransform to substitute into resolved TemplateArguments.
>> 
>>    This comes up when substituting into an already-substituted template
>>    argument during constraint satisfaction checking.
>> 
>>    (cherry picked from commit b20ab412bf838a8a87e5cc1c8c6399c3c9255354)
>> </cut>
>> 
>> Configuration details:
>> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
>> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
>> rr[llvm_branch]="edbe962459da6e3b7b4168118f93a77847b54e02"
>> 
>> Results regressed to (for first_bad == e3ac79a649056865d47815446a95503bd4bd8908)
>> # reset_artifacts:
>> -10
>> # build_llvm:
>> -1
>> # linux_n_obj:
>> 27574
>> # linux build successful:
>> all
>> # First few build errors in logs:
>> # 00:00:00 +++ grep ' error:\|^ERROR:\|: undefined reference\|\] Error '
>> 
>> from (for last_good == 321d929774c6fa0767e4ae5eb0881ad15e7a4664)
>> # reset_artifacts:
>> -10
>> # build_llvm:
>> -1
>> # linux_n_obj:
>> 27574
>> # linux build successful:
>> all
>> # linux boot successful:
>> boot
>> 
>> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/build-e3ac79a649056865d47815446a95503bd4bd8908/
>> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/build-321d929774c6fa0767e4ae5eb0881ad15e7a4664/
>> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/
>> 
>> Reproduce builds:
>> <cut>
>> mkdir investigate-llvm-e3ac79a649056865d47815446a95503bd4bd8908
>> cd investigate-llvm-e3ac79a649056865d47815446a95503bd4bd8908
>> 
>> git clone https://git.linaro.org/toolchain/jenkins-scripts
>> 
>> mkdir -p artifacts/manifests
>> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/manifests/build-baseline.sh --fail
>> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/manifests/build-parameters.sh --fail
>> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/test.sh --fail
>> chmod +x artifacts/test.sh
>> 
>> # Reproduce the baseline build (build all pre-requisites)
>> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>> 
>> cd llvm
>> 
>> # Reproduce first_bad build
>> git checkout --detach e3ac79a649056865d47815446a95503bd4bd8908
>> ../artifacts/test.sh
>> 
>> # Reproduce last_good build
>> git checkout --detach 321d929774c6fa0767e4ae5eb0881ad15e7a4664
>> ../artifacts/test.sh
>> 
>> cd ..
>> </cut>
>> 
>> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
>> 
>> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/
>> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/consoleText
>> 
>> Full commit:
>> <cut>
>> commit e3ac79a649056865d47815446a95503bd4bd8908
>> Author: Richard Smith <richard@metafoo.co.uk>
>> Date:   Thu Mar 19 12:38:40 2020 -0700
>> 
>>    Teach TreeTransform to substitute into resolved TemplateArguments.
>> 
>>    This comes up when substituting into an already-substituted template
>>    argument during constraint satisfaction checking.
>> 
>>    (cherry picked from commit b20ab412bf838a8a87e5cc1c8c6399c3c9255354)
>> ---
>> clang/lib/Sema/TreeTransform.h               | 85 +++++++++++++---------------
>> clang/test/SemaTemplate/subst-into-subst.cpp | 34 +++++++++++
>> 2 files changed, 72 insertions(+), 47 deletions(-)
>> 
>> diff --git a/clang/lib/Sema/TreeTransform.h b/clang/lib/Sema/TreeTransform.h
>> index 0305954a278e..30fb089742ee 100644
>> --- a/clang/lib/Sema/TreeTransform.h
>> +++ b/clang/lib/Sema/TreeTransform.h
>> @@ -4022,50 +4022,8 @@ template<typename Derived>
>> void TreeTransform<Derived>::InventTemplateArgumentLoc(
>>                                          const TemplateArgument &Arg,
>>                                          TemplateArgumentLoc &Output) {
>> -  SourceLocation Loc = getDerived().getBaseLocation();
>> -  switch (Arg.getKind()) {
>> -  case TemplateArgument::Null:
>> -    llvm_unreachable("null template argument in TreeTransform");
>> -    break;
>> -
>> -  case TemplateArgument::Type:
>> -    Output = TemplateArgumentLoc(Arg,
>> -               SemaRef.Context.getTrivialTypeSourceInfo(Arg.getAsType(), Loc));
>> -
>> -    break;
>> -
>> -  case TemplateArgument::Template:
>> -  case TemplateArgument::TemplateExpansion: {
>> -    NestedNameSpecifierLocBuilder Builder;
>> -    TemplateName Template = Arg.getAsTemplateOrTemplatePattern();
>> -    if (DependentTemplateName *DTN = Template.getAsDependentTemplateName())
>> -      Builder.MakeTrivial(SemaRef.Context, DTN->getQualifier(), Loc);
>> -    else if (QualifiedTemplateName *QTN = Template.getAsQualifiedTemplateName())
>> -      Builder.MakeTrivial(SemaRef.Context, QTN->getQualifier(), Loc);
>> -
>> -    if (Arg.getKind() == TemplateArgument::Template)
>> -      Output = TemplateArgumentLoc(Arg,
>> -                                   Builder.getWithLocInContext(SemaRef.Context),
>> -                                   Loc);
>> -    else
>> -      Output = TemplateArgumentLoc(Arg,
>> -                                   Builder.getWithLocInContext(SemaRef.Context),
>> -                                   Loc, Loc);
>> -
>> -    break;
>> -  }
>> -
>> -  case TemplateArgument::Expression:
>> -    Output = TemplateArgumentLoc(Arg, Arg.getAsExpr());
>> -    break;
>> -
>> -  case TemplateArgument::Declaration:
>> -  case TemplateArgument::Integral:
>> -  case TemplateArgument::Pack:
>> -  case TemplateArgument::NullPtr:
>> -    Output = TemplateArgumentLoc(Arg, TemplateArgumentLocInfo());
>> -    break;
>> -  }
>> +  Output = getSema().getTrivialTemplateArgumentLoc(
>> +      Arg, QualType(), getDerived().getBaseLocation());
>> }
>> 
>> template<typename Derived>
>> @@ -4075,12 +4033,45 @@ bool TreeTransform<Derived>::TransformTemplateArgument(
>>   const TemplateArgument &Arg = Input.getArgument();
>>   switch (Arg.getKind()) {
>>   case TemplateArgument::Null:
>> -  case TemplateArgument::Integral:
>>   case TemplateArgument::Pack:
>> -  case TemplateArgument::Declaration:
>> -  case TemplateArgument::NullPtr:
>>     llvm_unreachable("Unexpected TemplateArgument");
>> 
>> +  case TemplateArgument::Integral:
>> +  case TemplateArgument::NullPtr:
>> +  case TemplateArgument::Declaration: {
>> +    // Transform a resolved template argument straight to a resolved template
>> +    // argument. We get here when substituting into an already-substituted
>> +    // template type argument during concept satisfaction checking.
>> +    QualType T = Arg.getNonTypeTemplateArgumentType();
>> +    QualType NewT = getDerived().TransformType(T);
>> +    if (NewT.isNull())
>> +      return true;
>> +
>> +    ValueDecl *D = Arg.getKind() == TemplateArgument::Declaration
>> +                       ? Arg.getAsDecl()
>> +                       : nullptr;
>> +    ValueDecl *NewD = D ? cast_or_null<ValueDecl>(getDerived().TransformDecl(
>> +                              getDerived().getBaseLocation(), D))
>> +                        : nullptr;
>> +    if (D && !NewD)
>> +      return true;
>> +
>> +    if (NewT == T && D == NewD)
>> +      Output = Input;
>> +    else if (Arg.getKind() == TemplateArgument::Integral)
>> +      Output = TemplateArgumentLoc(
>> +          TemplateArgument(getSema().Context, Arg.getAsIntegral(), NewT),
>> +          TemplateArgumentLocInfo());
>> +    else if (Arg.getKind() == TemplateArgument::NullPtr)
>> +      Output = TemplateArgumentLoc(TemplateArgument(NewT, /*IsNullPtr=*/true),
>> +                                   TemplateArgumentLocInfo());
>> +    else
>> +      Output = TemplateArgumentLoc(TemplateArgument(NewD, NewT),
>> +                                   TemplateArgumentLocInfo());
>> +
>> +    return false;
>> +  }
>> +
>>   case TemplateArgument::Type: {
>>     TypeSourceInfo *DI = Input.getTypeSourceInfo();
>>     if (!DI)
>> diff --git a/clang/test/SemaTemplate/subst-into-subst.cpp b/clang/test/SemaTemplate/subst-into-subst.cpp
>> new file mode 100644
>> index 000000000000..69c4a837864d
>> --- /dev/null
>> +++ b/clang/test/SemaTemplate/subst-into-subst.cpp
>> @@ -0,0 +1,34 @@
>> +// RUN: %clang_cc1 -std=c++2a -verify %s
>> +
>> +// When forming and checking satisfaction of atomic constraints, we will
>> +// substitute still-dependent template arguments into an expression, and later
>> +// substitute into the result. This creates some unique situations; check that
>> +// they work.
>> +
>> +namespace SubstIntoResolvedTypeTemplateArg {
>> +  template<int, class> struct X {};
>> +
>> +  template<class T> concept A = true;
>> +  template<class T> concept B = sizeof(T) != 0;
>> +  template<class T> concept C = B<X<1, T>>;
>> +
>> +  int f(A auto); // expected-note {{candidate}}
>> +  int f(C auto); // expected-note {{candidate}}
>> +  int k1 = f(0); // expected-error {{ambiguous}}
>> +
>> +  template<class T> concept D = A<T> && B<X<1, T>>;
>> +  int f(D auto);
>> +  int k2 = f(0); // ok
>> +
>> +  // The atomic constraint formed from B<X<(int)'\1', T>> is identical to the
>> +  // one formed from C, even though the template arguments are written as
>> +  // different expressions; the "equivalent" rules are used rather than the
>> +  // "identical" rules when matching template arguments in concept-ids.
>> +  template<class T> concept E = A<T> && B<X<(int)'\1', T>>;
>> +  int g(C auto);
>> +  int g(E auto); // expected-note {{candidate}}
>> +  int k3 = g(0);
>> +
>> +  int g(D auto); // expected-note {{candidate}}
>> +  int k4 = g(0); // expected-error {{ambiguous}}
>> +}
>> </cut>
>> 
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1635078525.17683.1587056556857.JavaMail.javamailuser%40localhost.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/72111BE5-D78F-4CA6-8246-2EDB31D994AC%40linaro.org.
