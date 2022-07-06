Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM6PS2LAMGQEJVGOSNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C93568C79
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jul 2022 17:18:12 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id v16-20020a056402349000b00435a1c942a9sf11939352edc.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jul 2022 08:18:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1657120692; cv=pass;
        d=google.com; s=arc-20160816;
        b=rF2WaCKbhFgM6bVAQGNHPDucXoAgkbA3rt+zw1kdpYRwQpNd4ClnJBL1lMKZSmTrMl
         FCNcOJpwxVCqKqSBKS2ij3NMWM9/dTPXPpicAIo2FVhZBVEJpsnhCmre7JmWRm7DjSS2
         r2y+/7gXZmJKb43YgdXnIkLLdtx9sQ3b/90GScuzGTt0tVb5BykTUYNan7xBbkbKzHGw
         r0l9V/AZhhpZQe4QMnSEMMPF7UFHGwmUL1Y2gLN9u5LXL21O3XzdAehLWsa4ifqD7DVW
         IaKz25yFU0aOCcl+YNKlyg3f9eAmNIJlJgLJzXJdFsphpZ3A3HG4ub1q2SCgOKT9sHsV
         NyHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZyllLwZXsnQz0UbBM4Bga7rwXogfPmV0lPB+HuoO0hA=;
        b=Z7h1N//z6Eb/XdYkam9mx+gCG72cf2dVQ9rrf83JXLG89eAFMg1ibsIC151T29Wp9q
         /lWVEdXV9ySP+2tM+5PicCOwxYZ5YAvknsYmrCVYqgSBnNhUlfAbv7/NmcBHWxKKiD6S
         4+Yem/py3KdmOhXu9N31FGy/zlrzE068A32hJYXnOfteeiNR5V31Nw2cBhgyynw6fFzp
         ybBsRne6wBXHrbos1HAVsAMBhHW/6/Y5092TvqfGSuH/t+GNfhVocwVe+ArZZhO04zmb
         2mcHfSeHRUqvI9pib8X98rkYTapWRh8dKLsUDydwlP2JQOBF5rGhnTpjk6ldXj4+YV5g
         3jTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OHAS5hO8;
       spf=pass (google.com: domain of nathan@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZyllLwZXsnQz0UbBM4Bga7rwXogfPmV0lPB+HuoO0hA=;
        b=bH1JcR8LGkrZse12oRqOA0zOxSNa1pIX7/sylKaKzjr2Xx5B6EbfbFB3CEDngZRxBR
         LDVbEEcL1BwCC+xcbw55ekPRhrqFrUuQ3Xg4QTtNH7GbDUXqqqUnf4VoQwKcC5ANPcYT
         fdoYTHKqz+MzffORahpjxZ8mfevROUcwT69y37VT/VA06Zy3zKIWERHQA1LBS4bPpXRf
         ICoQ+WUg176n9n/cKdRFJwV0nqJtkpcqptQzegbzmEh0TRfzeEj3RXfRT1QmaSrFkTgU
         lPZPcLfYgySGKP+AyLxFkw6ZQDnBH9SsiA7sAHP9caWWM2RjCCqNsiUoIGwae1QvYwhB
         Jv6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZyllLwZXsnQz0UbBM4Bga7rwXogfPmV0lPB+HuoO0hA=;
        b=yMYU0LaBUkceNk1bdBcc0X1bjC46Yr52ATCblDtXPBKUqQc5AxNInzdUNYe+cLT13M
         VbuTvOo95e+LSPOkLoaYuyCi/TN6jDirJ2b+Kkn7Q2IVnuSBsZjpuvJRgptNApSKmC3+
         P9xhFzx54+epRhVpjwGZI08LZEpb1iC2Kp0MPGJhSFMMGzGrIYe2/oacxBqm0aMRRyrx
         F3Hv1S8Rgscq6tgmOlYUolIRbR4PYXD0/4MNuLhkWUNupWCuo6gKVY3ciV6qYxwir3D+
         VT4iFDk8LzYz9MszCpxmCzmTNZULHNYsIYpIl74vj3e8vIOoZVlzDSyTj1KW5RLkxr+A
         sx+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora8ai5nOcUdvx6+QkkwGGxpNv8MCUlcwjlIixdk+04GWmJIxllC9
	fRsM/AfIVQgbNLSm2UOSRW8=
X-Google-Smtp-Source: AGRyM1val3Vx428rbYSXt7SD8UgYWWJFbKo1VS7QGep/9ienxccgmZJ8aoIczYonalgSyPNgXJkFvQ==
X-Received: by 2002:a17:907:7632:b0:72a:e615:30e3 with SMTP id jy18-20020a170907763200b0072ae61530e3mr8856743ejc.675.1657120691944;
        Wed, 06 Jul 2022 08:18:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:d0e:b0:43a:6e96:4ae7 with SMTP id
 eb14-20020a0564020d0e00b0043a6e964ae7ls6164559edb.1.gmail; Wed, 06 Jul 2022
 08:18:11 -0700 (PDT)
X-Received: by 2002:a05:6402:5409:b0:42a:a643:4eb8 with SMTP id ev9-20020a056402540900b0042aa6434eb8mr54657989edb.71.1657120690950;
        Wed, 06 Jul 2022 08:18:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1657120690; cv=none;
        d=google.com; s=arc-20160816;
        b=LsTBEcP5h3eTa5OGG1iRl0zAos0mxBpzSuku7xMQbKE43ywkMSxjd8VEK2pK0w/1XR
         Qn6N+im8u1rUIWQuJxmgxwYpnTczCVQAumqYscFDwXK8JEXYybchQ1KSur59ZTM/HsU9
         bwKlIslfFYCZei1K5+2FmaEWd/+GaqfwvikmwhyCVNJ55zpRMFcC4bEAI1R1+70+H+Hm
         Ik0Z0PPwKM5qQC5rUY4hGXBPJ3YtBHPKFA30NjDuHLT5i6hq5SJpKkqHPieKFNbUtTU9
         oS40auLY6jFZH8L+pwiPO8/755kuPt7qi+fb9Cqdh7KQTjUosHbCgs6s+QSLwdhL+mAO
         nbWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2LMCaO6vTDabZN1rCyMlGwYle38IzOCU9E5FKXLU4xQ=;
        b=VTPvsLn8/VbQ1Jp6gua8JA9NDvgAE7qXx2O3HgMWHp4ecRItPnPFaf/C7DT1+bBHbU
         Hu6xTnpgdb81PsQB29CZrjWZ/zw6i2vCcbayecf4IoYkds4G1pxmbtkKqCSELuyvRyHT
         dSxs+SBALmaP9Qr5GnHASVsGb3Fwyarb5A44puAIJiWsFly/5IPSakLl71SnUYektAr/
         RtRyS/aOpqS+Mwd3uQHo6QhI2IPM6bHmWebAk0ZBqAEDkfDfuCQyG9OfqPqJCyvqYlUE
         CWhGMaW3gE943kYIcothNZ52EyN6N1w/FNhmRXy1nm5op+QNHhK2WysK3RVvZvH9NsYX
         JzhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OHAS5hO8;
       spf=pass (google.com: domain of nathan@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id t1-20020a056402524100b0042d687c85d2si1121211edd.0.2022.07.06.08.18.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jul 2022 08:18:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A5261B81AF1;
	Wed,  6 Jul 2022 15:18:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23B6AC3411C;
	Wed,  6 Jul 2022 15:18:09 +0000 (UTC)
Date: Wed, 6 Jul 2022 08:18:07 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Zhihao Lin <zh.lin@mail.utoronto.ca>
Cc: clang-built-linux@googlegroups.com, llvm@lists.linux.dev
Subject: Re: Generating LLVM IR
Message-ID: <YsWnr0C2hFNSAqch@dev-arch.thelio-3990X>
References: <YT3PR01MB8756D354EA9FC06D5009E205A0809@YT3PR01MB8756.CANPRD01.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YT3PR01MB8756D354EA9FC06D5009E205A0809@YT3PR01MB8756.CANPRD01.PROD.OUTLOOK.COM>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=OHAS5hO8;       spf=pass
 (google.com: domain of nathan@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hi Zhihao,

On Wed, Jul 06, 2022 at 10:57:53AM +0000, Zhihao Lin wrote:
> Hello, I'm trying to build the kernel using LLVM and generate LLVM IR.
> In the makefile, I saw there is a target "dir/file.ll" provided.
> However, I want to add more attributes to the IR file generated, such
> as adding debug information. Is there any way to generate personalized
> IR by either modifying the Makefile or changing Makefile variables?

You can add additional flags to the "dir/file.ll" compiler invocation
with the KCFLAGS make variable:

$ make KCFLAGS="-ffoo -Wfoo" dir/file.ll

Additionally, there are kernel configurations, such as CONFIG_DEBUG_INFO
or CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT (depending on the kernel
version you are working against), which will add the compiler arguments
to generate debug info.

If you have any further questions, feel free to let us know! I have
added our new mailing list (llvm@lists.linux.dev) to the thread so it
can be archived at https://lore.kernel.org/llvm for future travellers,
please use that list if you start any new threads in the future :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YsWnr0C2hFNSAqch%40dev-arch.thelio-3990X.
