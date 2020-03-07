Return-Path: <clang-built-linux+bncBCXLBLOA7IGBBNN5RXZQKGQEYQHU53Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id A75D817CCFA
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Mar 2020 09:43:33 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id a32sf3578298edf.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Mar 2020 00:43:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583570613; cv=pass;
        d=google.com; s=arc-20160816;
        b=efTOFrR7a9w6QSOFr5852xw36FzfrUnpE/R01iCLi7HbgsvAcS0lx7XSnLuNQFf2hY
         C65YHt9Nj6B28OVdHg44x6ZqK19qDciM7gxFW7GhbpnxgpfDdOr97mCurRIuGzqu6G6j
         euKEI9+quhx01G9M2TXIOw8DirUYSwZ80f6GK3jOiiOuNUHjH1YDIqTfAQi42lM8H21s
         daFoU+ky4ij2szsbZhm4WsJwj/dwxqYQ2c16uK84Mu1V2Nvu9E2h2meqTXNtFxfX/r84
         8G6qfQjCiwngsOwxfI2xI0sN2/bEh+wHyKS926iOeCy4F7wyvwiipptvnX93LVW+Itmi
         LnDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=kUYwcmwKI0xNaTbtg9e7sSzHIRRVTY84xInjkHviugU=;
        b=bNfmjc3i+ctkTVu+QkTdqHh9ybCAgIIC9uOqG0AQslEiWqElMGgdMYyMDiCLgyJ4wa
         vMG8FUidR5gq89gGeOECnalh8C+dCV9dv81PvRm2swAIu07luuBePhPLZXSLT1tzjwDf
         vJR4SenrnCQIzThkAbSFvwHlGp8BUAyUxoOR1EgA2trC0HhzxHHmMPRj/UqqjF9nWjGS
         Cyu7HMhT9k1wvUMCgVa1mNh+PuvMD2Qho+yspymyZC56PSwv7y8h3yKEe81VMOwKqXPt
         86+EHkLhp9ub6msA+sRSgQHDGdkq5zE3Iswi8irUaNPHopGvjFnPz3uRmLjmyXU+Tvtl
         60Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=tsMaHfnx;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kUYwcmwKI0xNaTbtg9e7sSzHIRRVTY84xInjkHviugU=;
        b=tG9/Hvj0Vj5AlsFsolb3LCRLze65cErwNA+RlIZXt119rKRbeKKorJph7UMeVEA4A2
         uzFku62PVl7YW4Eo0qQcK1TGaPgsdmbSZe633nheCXpZLGmx4lhRehL+DGVTDM3JKyKE
         nlujttawtaV+AAQ6bR4pqClzN2QN+Jw5NkuOVy/AygtjYQXUoorTn3p9k5bvM63YHL1K
         ehicewGAIpYxEzA1m7+HHqWMgxxknGit1RVJUQ4B1O1ckgptHr19Slpnrg0TsnX6Kq9u
         LQY0fVMBfFzsPQFKnRRJqUmJVWxVEVW9KCOv0bFoBmNh6ghEAyXQNgl0M4tV13ZC2LGp
         TI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kUYwcmwKI0xNaTbtg9e7sSzHIRRVTY84xInjkHviugU=;
        b=glz46mfS36pkw6TFGsqu53eFq2XjKeOTsOk+hZxrVjN3qdJ7LJtq5123iHeWBxLjlN
         JPXHJhj7u4wiV6sHKdw7SHNB8lnczw6wqtac2GbxEpMkm4v2OeNZzQs7r01DvCK+SlpP
         Ezw++qOI6bk8OLFB29j81Qz+2bvLVvGPx89j6u4QXIsOpzp9M+xkEpHNFz2ozi0RpYMz
         Vuo1eskR2mhFst6oX9P5WKxwSxoEZ4FVYSFCK7Qt6OhGGSkkqxqKE06BzW6ZImyDlVZs
         QGbq2om/stO7ULQLka/IxMs8gH1la2KRWMxFRXo2KJ0WEYsDxSi5a1wUEjq31E0dUXaO
         B8hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1yncRuHRg5MYEWakhZ9GYn6RCg/A53Uue615m5bvHH+DJU5CeR
	SZ7qt2wNoQXuUYfMAUGLKSU=
X-Google-Smtp-Source: ADFU+vsL7UohpuuCCUE+llja8WNSaTM+Km2XfhNufaUZiNbUqzB0BaCy8YcRyIyBbKupctVNLkVjPg==
X-Received: by 2002:a50:e883:: with SMTP id f3mr7269641edn.357.1583570613423;
        Sat, 07 Mar 2020 00:43:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9517:: with SMTP id u23ls3310149eda.7.gmail; Sat, 07 Mar
 2020 00:43:32 -0800 (PST)
X-Received: by 2002:a05:6402:21c1:: with SMTP id bi1mr7657421edb.102.1583570612929;
        Sat, 07 Mar 2020 00:43:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583570612; cv=none;
        d=google.com; s=arc-20160816;
        b=ems3MXU687HrJIvhaBqo8rvsZPg/CH/QxP/aYCFm/hZdCWtO6Xp/da5AWux167oIDP
         BRW21aBJt3gOIlNsDJK2t23gfqQkO17Wc+8/Miee57kCTrBbuhFgxkOL491aPWStK8ov
         k3pNBK4PHYPn/R/ylFTEBHgjfKS2h9Q470pzegXWnd1pdMqBHJWEIiLpgDf1DDM/zsf+
         dNhHyOpLwIkHsXAI4ofDR9qQN6r0SuwWo46L0tTE/UkYAB1VgSp9JfhsazAcyYQgJiYa
         ZtATvHXX8odF76dAq9tmAlgASO+M0nZVutVkuQRjcHVJK3iX+0vPXknBVwbXmLiS9Eei
         QSmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=u+2UwiTIxrQoAsOf43nXQEGYIDyLl0vxscMD/O1i7C8=;
        b=ELKD6Wp4ilKqDFXB1xHUNHOX8q4ikHdcoX3XNiFGJ8VcQn4+U4iEnlUJpXBw8Q+Gzc
         prCLXlgy0zKoEZEGMneKQesnVJ04HJoNYxzl9lb85hRRAw7MLQxDEgosTYb+M7mgIBeA
         tJCtILNcVI/GLWK6dQqfBO1tuEEzMrgsqwWCp8klMqZ6v1l9up8bHyQ4KeJnCNTOyiJb
         8yCzt000JETXsfZdTFGNgHi+xOB4/ofjipId94Q1h88Hxk4ZBMQIeruBq8YZTkWOJmRJ
         F2UjKpy2tzyKHIQkLL43RjqCaQNzljzQn225BASqms8fRoRi9DKuS3DLh4A8yWeVbnEA
         zzxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=tsMaHfnx;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id g12si199525eje.1.2020.03.07.00.43.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 00:43:32 -0800 (PST)
Received-SPF: pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 48ZJ0z3BkbzB09bF;
	Sat,  7 Mar 2020 09:43:31 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id O3Co47ykOMof; Sat,  7 Mar 2020 09:43:31 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 48ZJ0z27m4zB09bD;
	Sat,  7 Mar 2020 09:43:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 3BE5B8B785;
	Sat,  7 Mar 2020 09:43:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id h78s3rA8Ey5D; Sat,  7 Mar 2020 09:43:32 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 84E798B776;
	Sat,  7 Mar 2020 09:43:31 +0100 (CET)
Subject: Re: ppc32 panic on boot on linux-next
To: Nick Desaulniers <ndesaulniers@google.com>,
 Michael Ellerman <mpe@ellerman.id.au>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 linuxppc-dev@ozlabs.org
References: <CAKwvOdk=eFqRqN0KO1en9wH-NhcvwXbx_ntmUtf8h_xZSd-qKw@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <3702b680-a0fc-20dc-027b-518b880f9a41@c-s.fr>
Date: Sat, 7 Mar 2020 09:42:57 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdk=eFqRqN0KO1en9wH-NhcvwXbx_ntmUtf8h_xZSd-qKw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@c-s.fr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@c-s.fr header.s=mail header.b=tsMaHfnx;       spf=pass (google.com:
 domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted
 sender) smtp.mailfrom=christophe.leroy@c-s.fr
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



Le 06/03/2020 =C3=A0 20:05, Nick Desaulniers a =C3=A9crit=C2=A0:
> As a heads up, our CI went red last night, seems like a panic from
> free_initmem?  Is this a known issue?

Thanks for the heads up.

No such issue with either 8xx or book3s/32.

I've now been able to reproduce it with bamboo QEMU.

Reverting 2efc7c085f05 makes it disappear. I'll investigate.

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3702b680-a0fc-20dc-027b-518b880f9a41%40c-s.fr.
