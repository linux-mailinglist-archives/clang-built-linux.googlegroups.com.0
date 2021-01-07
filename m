Return-Path: <clang-built-linux+bncBDT2NAOB24NBBEWM3T7QKGQE27QF3SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id C09522ED362
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 16:17:38 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id 4sf2774614wrb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 07:17:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610032658; cv=pass;
        d=google.com; s=arc-20160816;
        b=CRcPdZXPyuZX6J3w7+pgj9hRJx+m6EZ5stLV6sG1EqrFjBKZ1AZ96eG/iY+U1XnT7q
         Uon9tRIzQX5dI4XrlpMxUPcAq0rSKYnjpU3bz0rui1fuaxw/tOuWeQvzhM2FOHuHTmcX
         CSk/4h2+ELeZYYPCZ3jJYZrVsF5lRWXLWITv9jaYkOYkoWVytFzxs0ED9gMH0bSuu6o3
         QIk7zYa430R6r3oVseMgoGhLRMVYXmaogfCTBaoSFSc0I4U3348caAT6r+4sfR6jHMc8
         emPyvW0rBi9BCyVRW6BYaRQb2PXhrf6d1r/4GKqptNA0w8AMFnBpeoE+R6Re9xZsGRNa
         OAPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:autocrypt:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=SQNAVWYBwcaY0T3mORbXWP31yubm/6dcs9mZ6wj+BGc=;
        b=WFpyo91fwyrHMmstfHeTEh5t5liKvS5nS3vxm5GILN/ebkVwBXXt8xiNrW09NVS6ch
         HFR5RDwkPnNgbCDv/Creur82jMROB2zJF8TcrfBjOXEyU/jipCNhXX2xL4rXUZTDufm2
         3QN1+lVSDjzclF3KltTgeOVb01JYAwOAeTOvpopQdlcLAcy6S1AZc6le9eqcheP/h9hK
         wZ6O+zvoeGJvaAPAMqXvOfPWiRJIpmMKNkoNHGpgkQQpvhkFk8y4FpM6KYDLqVhoYsII
         G5/2RwjaPsekpnXD6ih70eFcHKtjJK7n/bBjImZODtxFBMhKP3Q4RhRhro8Q6OosoZFM
         grUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SQNAVWYBwcaY0T3mORbXWP31yubm/6dcs9mZ6wj+BGc=;
        b=aZ38radbnKLfGKWZ7gs8Ew0yEJYS3wbGXVkudJI2cZMNEyC3DVneSrQq71q2BgOPXM
         tR0wXw73sjMhCKukpMtgV8DylzrbvBVzHsEJIvcrHdBIycBWxqEHAOZrUOvn0tV70Ue1
         2w+U/SaIZiz4Cl8KwaSKxkouWxY9kBFv9FfiI6GreMYXl4+deM2YNhzSIU5m9BvK6MUr
         pWpKCp2O+SX8pELDWCGo32gSJluT6znrDYyULDjukC0uewp7IQlf6cK4Q+Ouvo1pd5vS
         DUG57dYJdHvMOD2bWe73Pbp/HrNTtBh1iUEdzZxlUECPeYgZPnJJZddkID2MqnwyHHl1
         gCNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SQNAVWYBwcaY0T3mORbXWP31yubm/6dcs9mZ6wj+BGc=;
        b=ffzxNGqvEFMEBVhwYnah5DQGScSZEjVx+px0zjpUHJKzgfVrPTUTF+aGhQ9TdJYrAW
         x/+YLIHxYKuJUBiJk9nUtm1HAxQG4Fq2vclfAbgv7jFWYkavzr5VPKXZVYHfROW9c0jw
         kFTrEdh7ZHSutxkeIqJTT7asYefh/a9riBfa6rPxW7kTWL2E72aW6D3eLrwdH5Ujyh/A
         qsRs4WJb5ZbNlhVxWzPATBaBYIPpvtt5qMM3pmwJoCxYHVZWsoEYKuxPBnol1X3CEc0R
         /drvZygolafiqAbqTa2Ylw8WqTwZ+fayss0B5fjd8nO2wC/Ne9oMPXNjD624YN2gk86G
         IsHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uxtUQlHHrB9HiIR96m9iH3Q7PNR4V92A7LYDN2OmTqUcjpZWh
	sG1xIwWxyc/O09aty9/ljdw=
X-Google-Smtp-Source: ABdhPJzCJ+XePW0GcVLAD2LUJlY8/N31eFWo98YDNHwn5figzC3XxNvowTjQwT6bD2ui6J9zBqxHiw==
X-Received: by 2002:a05:6000:1082:: with SMTP id y2mr9272386wrw.233.1610032658552;
        Thu, 07 Jan 2021 07:17:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a781:: with SMTP id q123ls3256243wme.1.canary-gmail;
 Thu, 07 Jan 2021 07:17:37 -0800 (PST)
X-Received: by 2002:a1c:1bc6:: with SMTP id b189mr8269780wmb.71.1610032657767;
        Thu, 07 Jan 2021 07:17:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610032657; cv=none;
        d=google.com; s=arc-20160816;
        b=hMtl5jPlXUeOQsozaSK9dvuQmJ3NmNZnWTMl9/GERMpkGxT/RS7B2502GoCWuUpAMS
         cEJROIDHIf6Kyqclu0l4ZcPrpNfrLMzYgNBl6W5Ytf2nGeHNybpmIs38HivXtUXPG/G+
         mfuPCU20CKDw6MFrc/y1Z/2fwsAO1AHIMp5igrS+mvj322506PQPyIj1CreBswXOnofW
         kFZMfHNS0CtQZBOak3jaUUKgSCCe4/S4HMnjqD5X8Jg4NkoACJ02ZVUk4bJ4F1+yGfM1
         htDhLUwF8AsinHf854eeh0Jmo2M1DAxdu23rZ18rzrV1kTpFBYvLO1aoB+KSGZO/27D2
         NsmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:cc:to:subject;
        bh=dnWNJDGLw8U4fd9UZngXQl9MiyQncrxmG0vSIUNuuhs=;
        b=UEkkzCXeub4lCZAQkJWpVfdDb1iU4c8frPWYcR4t8BbpK68DS0yIEwpwFfH95zTkG6
         PR/1oVKwW6GABLgUc/oTsrXDSZ2i92X9p5IiYYzRxc0ZAmW6uJC4JyytuGg1fTqfJanh
         ELGtBf9u/P7jsVDC83RaqyJrI038AaJmyv2IjKmBrHG2lqhuQFC51kHnYFTJPwQpPteg
         yAGlAQyMaRBlMrL67SfJEEO3kvR1152CLJqHm2GGRvCLL9pDk5rOASjABTeYwHn6ERa7
         saxa1/8GBPZO8GFlUW7NGT2zGDV8q0sC/OmTAhSbvHGEUTp9lDIIenkn0mUz8zdODxAN
         UMaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id i206si257204wmi.0.2021.01.07.07.17.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 07:17:37 -0800 (PST)
Received-SPF: pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1kxX2f-0000N0-D0; Thu, 07 Jan 2021 16:17:37 +0100
Received: from [IPv6:2a03:f580:87bc:d400:4007:ed9f:14bb:8cca] (unknown [IPv6:2a03:f580:87bc:d400:4007:ed9f:14bb:8cca])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256
	 client-signature RSA-PSS (4096 bits) client-digest SHA256)
	(Client CN "mkl@blackshift.org", Issuer "StartCom Class 1 Client CA" (not verified))
	(Authenticated sender: mkl@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 3E5E05BBFAB;
	Thu,  7 Jan 2021 15:17:36 +0000 (UTC)
Subject: Re: [net-next 19/19] can: flexcan: add CAN wakeup function for
 i.MX8QM
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
References: <20210107094900.173046-20-mkl@pengutronix.de>
 <202101072306.UuJwcNxJ-lkp@intel.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Autocrypt: addr=mkl@pengutronix.de; prefer-encrypt=mutual; keydata=
 mQINBFFVq30BEACtnSvtXHoeHJxG6nRULcvlkW6RuNwHKmrqoksispp43X8+nwqIFYgb8UaX
 zu8T6kZP2wEIpM9RjEL3jdBjZNCsjSS6x1qzpc2+2ivjdiJsqeaagIgvy2JWy7vUa4/PyGfx
 QyUeXOxdj59DvLwAx8I6hOgeHx2X/ntKAMUxwawYfPZpP3gwTNKc27dJWSomOLgp+gbmOmgc
 6U5KwhAxPTEb3CsT5RicsC+uQQFumdl5I6XS+pbeXZndXwnj5t84M+HEj7RN6bUfV2WZO/AB
 Xt5+qFkC/AVUcj/dcHvZwQJlGeZxoi4veCoOT2MYqfR0ax1MmN+LVRvKm29oSyD4Ts/97cbs
 XsZDRxnEG3z/7Winiv0ZanclA7v7CQwrzsbpCv+oj+zokGuKasofzKdpywkjAfSE1zTyF+8K
 nxBAmzwEqeQ3iKqBc3AcCseqSPX53mPqmwvNVS2GqBpnOfY7Mxr1AEmxdEcRYbhG6Xdn+ACq
 Dq0Db3A++3PhMSaOu125uIAIwMXRJIzCXYSqXo8NIeo9tobk0C/9w3fUfMTrBDtSviLHqlp8
 eQEP8+TDSmRP/CwmFHv36jd+XGmBHzW5I7qw0OORRwNFYBeEuiOIgxAfjjbLGHh9SRwEqXAL
 kw+WVTwh0MN1k7I9/CDVlGvc3yIKS0sA+wudYiselXzgLuP5cQARAQABtCZNYXJjIEtsZWlu
 ZS1CdWRkZSA8bWtsQHBlbmd1dHJvbml4LmRlPokCVAQTAQoAPgIbAwIeAQIXgAULCQgHAwUV
 CgkICwUWAgMBABYhBMFAC6CzmJ5vvH1bXCte4hHFiupUBQJfEWX4BQkQo2czAAoJECte4hHF
 iupUvfMP/iNtiysSr5yU4tbMBzRkGov1/FjurfH1kPweLVHDwiQJOGBz9HgM5+n8boduRv36
 0lU32g3PehN0UHZdHWhygUd6J09YUi2mJo1l2Fz1fQ8elUGUOXpT/xoxNQjslZjJGItCjza8
 +D1DO+0cNFgElcNPa7DFBnglatOCZRiMjo4Wx0i8njEVRU+4ySRU7rCI36KPts+uVmZAMD7V
 3qiR1buYklJaPCJsnXURXYsilBIE9mZRmQjTDVqjLWAit++flqUVmDjaD/pj2AQe2Jcmd2gm
 sYW5P1moz7ACA1GzMjLDmeFtpJOIB7lnDX0F/vvsG3V713/701aOzrXqBcEZ0E4aWeZJzaXw
 n1zVIrl/F3RKrWDhMKTkjYy7HA8hQ9SJApFXsgP334Vo0ea82H3dOU755P89+Eoj0y44MbQX
 7xUy4UTRAFydPl4pJskveHfg4dO6Yf0PGIvVWOY1K04T1C5dpnHAEMvVNBrfTA8qcahRN82V
 /iIGB+KSC2xR79q1kv1oYn0GOnWkvZmMhqGLhxIqHYitwH4Jn5uRfanKYWBk12LicsjRiTyW
 Z9cJf2RgAtQgvMPvmaOL8vB3U4ava48qsRdgxhXMagU618EszVdYRNxGLCqsKVYIDySTrVzu
 ZGs2ibcRhN4TiSZjztWBAe1MaaGk05Ce4h5IdDLbOOxhuQENBF8SDLABCADohJLQ5yffd8Sq
 8Lo9ymzgaLcWboyZ46pY4CCCcAFDRh++QNOJ8l4mEJMNdEa/yrW4lDQDhBWV75VdBuapYoal
 LFrSzDzrqlHGG4Rt4/XOqMo6eSeSLipYBu4Xhg59S9wZOWbHVT/6vZNmiTa3d40+gBg68dQ8
 iqWSU5NhBJCJeLYdG6xxeUEtsq/25N1erxmhs/9TD0sIeX36rFgWldMwKmZPe8pgZEv39Sdd
 B+ykOlRuHag+ySJxwovfdVoWT0o0LrGlHzAYo6/ZSi/Iraa9R/7A1isWOBhw087BMNkRYx36
 B77E4KbyBPx9h3wVyD/R6T0Q3ZNPu6SQLnsWojMzABEBAAGJAjwEGAEKACYWIQTBQAugs5ie
 b7x9W1wrXuIRxYrqVAUCXxIMsAIbDAUJAucGAAAKCRArXuIRxYrqVOu0D/48xSLyVZ5NN2Bb
 yqo3zxdv/PMGJSzM3JqSv7hnMZPQGy9XJaTc5Iz/hyXaNRwpH5X0UNKqhQhlztChuAKZ7iu+
 2VKzq4JJe9qmydRUwylluc4HmGwlIrDNvE0N66pRvC3h8tOVIsippAQlt5ciH74bJYXr0PYw
 Aksw1jugRxMbNRzgGECg4O6EBNaHwDzsVPX1tDj0d9t/7ClzJUy20gg8r9Wm/I/0rcNkQOpV
 RJLDtSbGSusKxor2XYmVtHGauag4YO6Vdq+2RjArB3oNLgSOGlYVpeqlut+YYHjWpaX/cTf8
 /BHtIQuSAEu/WnycpM3Z9aaLocYhbp5lQKL6/bcWQ3udd0RfFR/Gv7eR7rn3evfqNTtQdo4/
 YNmd7P8TS7ALQV/5bNRe+ROLquoAZvhaaa6SOvArcmFccnPeyluX8+o9K3BCdXPwONhsrxGO
 wrPI+7XKMlwWI3O076NqNshh6mm8NIC0mDUr7zBUITa67P3Q2VoPoiPkCL9RtsXdQx5BI9iI
 h/6QlzDxcBdw2TVWyGkVTCdeCBpuRndOMVmfjSWdCXXJCLXO6sYeculJyPkuNvumxgwUiK/H
 AqqdUfy1HqtzP2FVhG5Ce0TeMJepagR2CHPXNg88Xw3PDjzdo+zNpqPHOZVKpLUkCvRv1p1q
 m1qwQVWtAwMML/cuPga78rkBDQRfEXGWAQgAt0Cq8SRiLhWyTqkf16Zv/GLkUgN95RO5ntYM
 fnc2Tr3UlRq2Cqt+TAvB928lN3WHBZx6DkuxRM/Y/iSyMuhzL5FfhsICuyiBs5f3QG70eZx+
 Bdj4I7LpnIAzmBdNWxMHpt0m7UnkNVofA0yH6rcpCsPrdPRJNOLFI6ZqXDQk9VF+AB4HVAJY
 BDU3NAHoyVGdMlcxev0+gEXfBQswEcysAyvzcPVTAqmrDsupnIB2f0SDMROQCLO6F+/cLG4L
 Stbz+S6YFjESyXblhLckTiPURvDLTywyTOxJ7Mafz6ZCene9uEOqyd/h81nZOvRd1HrXjiTE
 1CBw+Dbvbch1ZwGOTQARAQABiQNyBBgBCgAmFiEEwUALoLOYnm+8fVtcK17iEcWK6lQFAl8R
 cZYCGwIFCQLnoRoBQAkQK17iEcWK6lTAdCAEGQEKAB0WIQQreQhYm33JNgw/d6GpyVqK+u3v
 qQUCXxFxlgAKCRCpyVqK+u3vqatQCAC3QIk2Y0g/07xNLJwhWcD7JhIqfe7Qc5Vz9kf8ZpWr
 +6w4xwRfjUSmrXz3s6e/vrQsfdxjVMDFOkyG8c6DWJo0TVm6Ucrf9G06fsjjE/6cbE/gpBkk
 /hOVz/a7UIELT+HUf0zxhhu+C9hTSl8Nb0bwtm6JuoY5AW0LP2KoQ6LHXF9KNeiJZrSzG6WE
 h7nf3KRFS8cPKe+trbujXZRb36iIYUfXKiUqv5xamhohy1hw+7Sy8nLmw8rZPa40bDxX0/Gi
 98eVyT4/vi+nUy1gF1jXgNBSkbTpbVwNuldBsGJsMEa8lXnYuLzn9frLdtufUjjCymdcV/iT
 sFKziU9AX7TLZ5AP/i1QMP9OlShRqERH34ufA8zTukNSBPIBfmSGUe6G2KEWjzzNPPgcPSZx
 Do4jfQ/m/CiiibM6YCa51Io72oq43vMeBwG9/vLdyev47bhSfMLTpxdlDJ7oXU9e8J61iAF7
 vBwerBZL94I3QuPLAHptgG8zPGVzNKoAzxjlaxI1MfqAD9XUM80MYBVjunIQlkU/AubdvmMY
 X7hY1oMkTkC5hZNHLgIsDvWUG0g3sACfqF6gtMHY2lhQ0RxgxAEx+ULrk/svF6XGDe6iveyc
 z5Mg5SUggw3rMotqgjMHHRtB3nct6XqgPXVDGYR7nAkXitG+nyG5zWhbhRDglVZ0mLlW9hij
 z3Emwa94FaDhN2+1VqLFNZXhLwrNC5mlA6LUjCwOL+zb9a07HyjekLyVAdA6bZJ5BkSXJ1CO
 5YeYolFjr4YU7GXcSVfUR6fpxrb8N+yH+kJhY3LmS9vb2IXxneE/ESkXM6a2YAZWfW8sgwTm
 0yCEJ41rW/p3UpTV9wwE2VbGD1XjzVKl8SuAUfjjcGGys3yk5XQ5cccWTCwsVdo2uAcY1MVM
 HhN6YJjnMqbFoHQq0H+2YenTlTBn2Wsp8TIytE1GL6EbaPWbMh3VLRcihlMj28OUWGSERxat
 xlygDG5cBiY3snN3xJyBroh5xk/sHRgOdHpmujnFyu77y4RTZ2W8
Message-ID: <3e706cb6-0fef-9b82-c898-6dc563e289f8@pengutronix.de>
Date: Thu, 7 Jan 2021 16:17:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <202101072306.UuJwcNxJ-lkp@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="rKBfUUewd80vKagqsazt3c6B8qsK77mm3"
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: mkl@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--rKBfUUewd80vKagqsazt3c6B8qsK77mm3
Content-Type: multipart/mixed; boundary="j2pqkDmyD61zWWUc00oPzS3DlQN3X5TEc";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Message-ID: <3e706cb6-0fef-9b82-c898-6dc563e289f8@pengutronix.de>
Subject: Re: [net-next 19/19] can: flexcan: add CAN wakeup function for
 i.MX8QM
References: <20210107094900.173046-20-mkl@pengutronix.de>
 <202101072306.UuJwcNxJ-lkp@intel.com>
In-Reply-To: <202101072306.UuJwcNxJ-lkp@intel.com>

--j2pqkDmyD61zWWUc00oPzS3DlQN3X5TEc
Content-Type: text/plain; charset="UTF-8"
Content-Language: de-DE

On 1/7/21 4:06 PM, kernel test robot wrote:
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 3db1a3fa98808aa90f95ec3e0fa2fc7abf28f5c9

False positive. The base commit it out of date, for details see:

http://lore.kernel.org/r/17682d27-a0bb-4a29-7c72-261ab7eeb8ee@pengutronix.de

Marc
-- 
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3e706cb6-0fef-9b82-c898-6dc563e289f8%40pengutronix.de.

--j2pqkDmyD61zWWUc00oPzS3DlQN3X5TEc--

--rKBfUUewd80vKagqsazt3c6B8qsK77mm3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAl/3JgwACgkQqclaivrt
76mjFAgAju9qCD786zAj4yLCXtlp2IlCKGS06CdAdCZ2lAg+JrJzqvvnTDQLvJhj
NfTrd+fuS9rb0SjQFH46Z5QzzDn96FJI5R/g2Lp3BIXH3DBo4Rp0oQKU5imUW4Cl
Nd+yVG/J35Nrn0PQTvISaxR4tI/10aw9ed8h+EZdl9w2OULWmsWWuc/a1ZDIBiZL
3ZMACbyWFdp9wuMZClcglbCV9CxDsi1QW33vUMrwGfF5JS7bB5upifGNuWOZBI4r
T7l9UlK4ykMO27s94MMa3VLumz/fTuimMuomo15LAz9qLsakYmPz7wn2AqB8l1aV
qUXGJPvepMKz44fx1rlR9nkmNcMnQw==
=01s8
-----END PGP SIGNATURE-----

--rKBfUUewd80vKagqsazt3c6B8qsK77mm3--
