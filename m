Return-Path: <clang-built-linux+bncBCKITOX5G4IIRHGRRIDBUBGGDISWG@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id D009241C372
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Sep 2021 13:29:12 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id z9-20020a0565120c0900b003fce36c1f74sf2079098lfu.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Sep 2021 04:29:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632914952; cv=pass;
        d=google.com; s=arc-20160816;
        b=uk9wNIvQ0mmZJIl5s7PMu+T2f2V93Q6Z1JtDZqo2Z/ogyLFJTkHSs3RAG1qZ+Bneqb
         h16j5ISLUomlq1FNjxkiHgTYuO/tRrfracD2wLWC/pVc4xktZMXLEhC9ImlXV3r/8Tnx
         1I45S1afxymS9gksLR5RSAA0HdbH7UFQyN/pMZEuziE3yollvF6HJGigL5gZIPaOQ12W
         +TjoBy0h43goE8gcGHBehEC0Bfxff+NVzxaINCWNq6r4q2lheXRueP0WKX8u9pVwCrPZ
         Wvo5CSyzxBB67YC1awwNooJLOVcBHoxDaeiigKHoaenS8aQ+o8CVBqOLvsN3GB8V7/wG
         +G6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=ynF1K3gWdalgXg8+NJZltmEXBu+c6esKufltH6J6tbM=;
        b=e7fdtRGX7gl49wStnqEcfX9gn7IKTZoPZpCQczUL82lZ0KL8L35xbRJqZmiPz9voAc
         mBL5mFSuznV5JxzgMxDenI813pT2C7OwnBjdmuRu1Xy315NX+rqOke4abKUMfxfPYNDv
         RtuFHkxP6RY29kA9rvMOSditiVMclf5e1OkyROjlueGGha9vqNwAlQ9thUqScxeH3+Ti
         HoGaBsRYw1uzzcEHgSQ2nexIPT+7uyHHsBDaPGX1Wd4+XY4CmFRtsI64S5B/UFxXUQiT
         tcGQmxRbQDFWFQoO0CyBdp+Oxw6T+iHnA552Wh4XqQGweXBKCkCF330l5dr8DGhc3CL2
         hFhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=fOYdu6sM;
       spf=pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ynF1K3gWdalgXg8+NJZltmEXBu+c6esKufltH6J6tbM=;
        b=RrMgFCnGfnuAhlCxOI/aqdtKO/8OnJzc04xYcwZ1CmC5DP5nutTeQMPW1Ovvp3oJ8z
         0UDS2ZTMq0e+nL2Ro0aAfB9Letg83jlHS75YsABRjeqsqJXBax5g3BG4ZsaRAIhORwtL
         2pSmMIb6fALQBwTBOmb3u3cEZhuRv0XO9G7P0az26pe2EgdAEURQdOzaZE8liDlmF4aQ
         Z7OjFqHmG7G1SdIY6ZJhJwiocef6XQ5Q/Kr3rw3hL1Eyt044MbwtQhnaJ1yaMN1pgaQu
         ttxarSoc+cAhosBYYSOR4fNxdrHGU7aOLwa1UX7LapQ3lyWBN16T1H6tt7jMFtouKu3Q
         2ZDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ynF1K3gWdalgXg8+NJZltmEXBu+c6esKufltH6J6tbM=;
        b=ldktZEniAIIgd4dQEKfphRB2MfILtR9lX+tSCJBsDVLDPdUYEqL4NrxEPH+haXt+Zn
         JvBVHMB8eR/mnrBOY8Es7o9A4Bh0BkhyCRYfAjIN22/vQItvxl4+ts7wQ+GOLS1LxGsP
         HofWviKbxC6tYS4IWZ0r+moWsyFS5X8BTHxEDGJtn4stWaN4x99vb24Cm1sS1Pd7UL+p
         ezJJRCEa51MIsNPGdACrAbzj25wln3731UVmOv14fHyFXokQGUtjsOAbTxULBmTvbcs4
         zVw9aPwG9+z1WcnJBJW7Fb9ZG+xcxwoA9/SkifY0OwWWA4fdzv0ONHNNUAP1a6Pkp0or
         rkpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TM4PaQgUa/UQz0C6mAZhfZeqhnUvoo+HHTN+VUXB6fRagnD5r
	xRVLB1sNgSTw5gDT5dDp1k8=
X-Google-Smtp-Source: ABdhPJzy1VnnbkdXoKYVHLdajvvfrMx4a8iPg2slMwg0UcGe9diCXN8Uf1co2O6Wqc9pJx/W+CpfdQ==
X-Received: by 2002:a2e:9b13:: with SMTP id u19mr5384331lji.41.1632914952421;
        Wed, 29 Sep 2021 04:29:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1795:: with SMTP id bn21ls519979ljb.10.gmail; Wed,
 29 Sep 2021 04:29:11 -0700 (PDT)
X-Received: by 2002:a2e:998a:: with SMTP id w10mr5472436lji.322.1632914951235;
        Wed, 29 Sep 2021 04:29:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632914951; cv=none;
        d=google.com; s=arc-20160816;
        b=c6UM1a5LLP3vxKw39zH5ysBOPnPtgNB7tJ+4f8Q7ZattexMS/RMffMuYhlQ3JMH29p
         CJLl1PqqLAcZm3jhh3H9jhtvc3p32cIaMGsqyJhPSooy9DkaLx/wj3ivTexnsBZujXix
         2zyJO5xMonfA+YSPLG/7HlfJfQE2Ax76RvsCF2UEW8YUi1qFi1QzRIhsvoaL5daA/nT+
         KTILqWpsGYSB7IleDpPUE6d5PnbK2YJmYQZF3omeWr0d1nw91WRyqxacI80JiFe6atVO
         rIQAyNyKi68teU5nA2FFNJ5fSzNsRJXQxnA0GAv8WFtvHhpWNQ1wkCAqDJtKh/VsuXmo
         yDIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=W7vAFKQNLKx6zdkwQ5jOk7gGyV5gDchn8oldOG6LT1c=;
        b=ipPKudjPUm/xdraxLLtQvuy+iMZEDJtcM/laWEarSuELiSxj2CFrY82a+baLEwZ3ta
         cKUXLPYC1yDF9DMEPpqeRdYCXE98jb2IABctWIa168GY4y50WC2daQ8IjQm9xdIulSjp
         K+bJHv6xzBBMzTD4X1ziTcNxeqVePXahWB842j+40UKEoGdP5exqpjAkIugcrqyisjvG
         oTVtEETNyk55phOOblP83TkHMrNkwoNJaHTmbqFoYmlhU+/c0JjsDASAJ5kiaZuBgZeT
         1xksKt0h4yiwWK0G2/KvI818eP1lOmQegXXBASAdMSSgmSj9In7snGlCFt1BGuwKpkGT
         ld8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=fOYdu6sM;
       spf=pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id z33si134649lfu.5.2021.09.29.04.29.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Sep 2021 04:29:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id b15so9254023lfe.7
        for <clang-built-linux@googlegroups.com>; Wed, 29 Sep 2021 04:29:11 -0700 (PDT)
X-Received: by 2002:a05:6512:214e:: with SMTP id s14mr11388357lfr.588.1632914949460;
        Wed, 29 Sep 2021 04:29:09 -0700 (PDT)
Received: from [192.168.0.218] ([185.30.228.145])
        by smtp.gmail.com with ESMTPSA id e3sm242777ljo.2.2021.09.29.04.29.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Sep 2021 04:29:09 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-lts-allmodconfig - Build # 6 - Successful!
From: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
In-Reply-To: <YRyczv2OCq51edQh@kroah.com>
Date: Wed, 29 Sep 2021 14:29:08 +0300
Cc: linaro-toolchain <linaro-toolchain@lists.linaro.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Arnd Bergmann <arnd@linaro.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <5FC746F0-5DA2-4B40-9581-FB2CDA2A143C@linaro.org>
References: <2088047326.3857.1629264127981@localhost>
 <YRyczv2OCq51edQh@kroah.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Original-Sender: maxim.kuvyrkov@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=fOYdu6sM;       spf=pass
 (google.com: domain of maxim.kuvyrkov@linaro.org designates
 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
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

Hi Greg,

This appears to have been a fluke.  Boot-testing succeeded before the merge=
 and failed after.  Boot-testing on allmodconfig doesn=E2=80=99t seem to be=
 stable, so we are going to disable it.

Regards,

--
Maxim Kuvyrkov
https://www.linaro.org

> On 18 Aug 2021, at 08:38, Greg Kroah-Hartman <gregkh@linuxfoundation.org>=
 wrote:
>=20
> On Wed, Aug 18, 2021 at 05:22:07AM +0000, ci_notify@linaro.org wrote:
>> Successfully identified regression in *linux* in CI configuration tcwg_k=
ernel/llvm-master-aarch64-lts-allmodconfig.  So far, this commit has regres=
sed CI configurations:
>> - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
>>=20
>> Culprit:
>> <cut>
>> commit 132a8267adabd645476b542b3b132c1b91988fe8
>> Author: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Date:   Thu Aug 12 13:22:21 2021 +0200
>>=20
>>    Linux 5.10.58
>=20
> <snip>
>=20
> And what am I supposed to do with this information?
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/YRyczv2OCq51edQh%40kroah.com.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5FC746F0-5DA2-4B40-9581-FB2CDA2A143C%40linaro.org.
