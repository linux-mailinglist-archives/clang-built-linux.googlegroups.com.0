Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBCWKTLVQKGQEWJYBWAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id C18D4A06D4
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 18:00:10 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id a2sf146831wrs.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 09:00:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567008010; cv=pass;
        d=google.com; s=arc-20160816;
        b=tGILbEbGo9fcGCV/SaCpAERSqAx2gcmW9wNmxr9xUeTUXFLh74bSn5uN6+7v795dyw
         EmbyGkasgpf1u0ZNbNN/BqYta3uPA2EsI2nwS0ib6RMkdLrTF6P0imJhvu7m34p/ibC6
         3x0tiISVVTF7xy0kX7ilvm3ge2WXFRYVsbThRmBqNy0F9pMulKPnjLlLC+yAW8/F5L6A
         jzotAfZWCvAUNlqQX1GEY5mO55BHQgJ8kN72m9yv8T33b+QbjobMAvsYT4mq14edMPeJ
         hufkFjiQGoRrhUKWdNo8P6apIAcAjVgI53LQad4E6vTQmIx7aEX0otoMCmOKXkHffOU0
         I27g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=nK1vU/Gy/5433EPfn8sJgDHNLOitSBxYLGLMaS3MTzo=;
        b=fzLH4joaxkhmKoEgB1DnLT0ddZMp61dYGPmt7c1m85pIhPnmHR1J85zlekRTNNGx6m
         SGbS7AVYzGaH5W3JFzbkK6Hs3PCZCkfyErAih1mp1I5uViibTIFpzLtPDLIMCT6gbaPu
         56P/Q/R0p2wRNZoN9IngcyFXptW/AHauBZnxheU0zBUF0rsSvViMYaTfBXLpHWdNIhFi
         4mNeGKMxJ2aKBLX35S1gHAZ041SRDDzGEyFez8xHC8gEkDs+Dmdv83oGWMJ5Wg2y/L0T
         gTF98pFfyaoLjx8NWbrV/7T7uDqU966n6GAfqUFIGCOD3pyNbYRHZkZi4lAftEkDnYHc
         ne/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CEwqsmRP;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nK1vU/Gy/5433EPfn8sJgDHNLOitSBxYLGLMaS3MTzo=;
        b=CsDkyQLqCZfyQwSyuNrcJ35RJoVRdM4XgFjbmiD7a/L8raYHIS8tM+MDRuKqVhYpR4
         TSBGwYg/PJ0kJFDVtbjheL/+fwOSUmIsyj3HS8UNDV1a2OKGtg7CAIb7618dzZ2GDoQq
         2fVD1JTMwDriZD2sa/36BOzhy4riM3DVN5PpbQQxxEEf2Yp6q2qGxqGPaW1WFGNCd5Yf
         oSPrLqaQ5U7AaE38oZqN5zkIN3hzdG+dq+PXm5YuqQTv8aJa3k3YiTP+CMkmNLwIgM76
         EQ+qZ7kqMbsIJTryxBWgCO9mpmKnFL+ghRz9CnGiT/KMK/WqHqXRrksgrsrJ69Ho52GE
         JEyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nK1vU/Gy/5433EPfn8sJgDHNLOitSBxYLGLMaS3MTzo=;
        b=YuTqH3Uoi54EmqpGbCiOjxQT4KEC5q6XQLN2KG1IoJM1f56PXKA8ONRcvnHGYQ4eOL
         RMP06/HgacB50RH/OuLcTdu/T5CRn4XoQCecJHKrEE7TEyDYMpsBUjftkLa/DUgdtdHi
         ZIRA99eC1Gj10/8o4pL4xrKwf7Dia8O/4CbxYBXyU0M8Hmxqfv0LINtp1OzqsRujww/0
         d9ZIIGSaC6nJwA59jNaCicGQEqkfeHeLm3zSZQm+kNRkZEgMux34ZGlNAqasc4z5ypH5
         gABxskE6vqJSphRdTJOKFFgcEaIvhjY17HUvSP4EPrY5Sr2+OjPA6eScf4KDp284kCsy
         iiPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nK1vU/Gy/5433EPfn8sJgDHNLOitSBxYLGLMaS3MTzo=;
        b=djn6DB3KR416m+DM0ysIiouAweMwaPr4UV2EOAA0nGziFIGTZTtbSN0yOtUlV6Hlh5
         NHztYUgg9auufNyK/QZnU9Cjg5fCHqcisml548AZ8trAjR7KmXo45Safx/KvjHeHEer/
         5GZdoo97x0V7TRYl/7EafTTwqtGCgLSIa5AWVT9Le1QDepYXofhnWQyDCoVf5g7YWPyW
         EfeSQxzD8n7uLr+57d02HbZIcvTYCk+WckBjtEW6OKvukd110VNaKQEkaqbFq6xLKsAh
         Zw2dwlqp97/yhcUtNUiEiBpQOv23yFX5QnAmXQ0lPq2AHYIpbEkjPpd86TqNUI4WlMhz
         DzRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVoN9NEBFUokqiA+aMFx+hFMIMTBiSNKGf/IYAHjyTg4Kfboj+V
	VEfcAPeumEkd3szMXaBXkXs=
X-Google-Smtp-Source: APXvYqy68GYqzmgyZm/wEJ3oqJ7d1A44SQF2YeLBZJAuqpgJiB7ry+gvVI9FkMl0ojC5jhNz8QN3HA==
X-Received: by 2002:adf:e885:: with SMTP id d5mr5660042wrm.15.1567008010450;
        Wed, 28 Aug 2019 09:00:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5001:: with SMTP id e1ls881679wrt.16.gmail; Wed, 28 Aug
 2019 09:00:09 -0700 (PDT)
X-Received: by 2002:adf:8444:: with SMTP id 62mr2447540wrf.202.1567008009846;
        Wed, 28 Aug 2019 09:00:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567008009; cv=none;
        d=google.com; s=arc-20160816;
        b=DzlqMSYCHA92Xv+iM579WWM5xR2/EGKE7hKj4B8+FWTtaWZQzuefpC41MO1/2HpPAj
         ndZn5RFwlRg3LtMoVzS3l/vOnI/EPMHzLuGWkeuMC7R+8mOjeA/g5K3KTkq0fbmvS0r/
         91OAXQ8oNKFzAKVRQ1pcCdxkn31iNmaI8Jim3uyPLJ62pExjprdfbVlAKCjaeZHxx5Hn
         3/3yOKyP3kCdHl9SMOeFdgBoU3X0waQS8oo4SvgOm417W/mn+EJSXq4dwwWVHwRqxcNu
         sdhG5dJIMiJzEBF0wD369gOZ1s8C17Nq/vCSA2MVUIJ+mvODkzPWql5e/Y9Jnnna+gcE
         BC5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ilsyNqlWp5FVYGjiIBBsqAystUJXrBFSMt033j8p03g=;
        b=D4FTyhuI0SJ5YgQQPb27gv9VMfdVf6wSDUwOD46TeqxGdj1hmojCPpjPOqbKyxeMVm
         i3pdp7qZHTQCF/ciw600c1NROsy8Ml27FPJHmbVjb98ZOxfcnpSfjIDmWrZbcjXRtNC7
         VvyIUjpaWNuIuYVu7AZeh9JTgqVr7ThdcNxsyX8X1R5s9ol1lhVRO3L02IH4e8Sw5q0O
         3uRXhULpkqDXeYMhX3QT+7gm5gjMA2fl43bCptkJu9L7WsQloV7JhOPtb1Nsaf0ZTKai
         xhgkYbHTC6vm2Qdt5LJinEEqGyupKCQgKgjF9IrtVEG7CgXpCn1fMvM/8ZKLe6QkQWiS
         vnhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CEwqsmRP;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id g7si496253wmk.0.2019.08.28.09.00.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 09:00:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id l2so637417wmg.0
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 09:00:09 -0700 (PDT)
X-Received: by 2002:a1c:9c45:: with SMTP id f66mr5858099wme.38.1567008009541;
 Wed, 28 Aug 2019 09:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <CA+icZUWigJkh-VtJc4=xE06oMgE=ci2Mfdo2JaDv0fth8PKH+A@mail.gmail.com>
 <CA+icZUUhhOLfOgwoKP4nKOdPakNJF7XafJ09ERP6r7dOUduMsg@mail.gmail.com> <CA+icZUUSVRURu-jQAnVnZwPp0qiWpostDz+WkTjxx8zunVKBgw@mail.gmail.com>
In-Reply-To: <CA+icZUUSVRURu-jQAnVnZwPp0qiWpostDz+WkTjxx8zunVKBgw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 28 Aug 2019 17:59:58 +0200
Message-ID: <CA+icZUXZqKpLcp7xmXEezquaCfKLiPS16gwrbcce105gjYftBg@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Michal Marek <michal.lkml@markovi.net>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000c516d505912f7bdc"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CEwqsmRP;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000c516d505912f7bdc
Content-Type: text/plain; charset="UTF-8"

Something like that...

[PATCH 1/2] kbuild: Improve extrawarn documentation
[PATCH 2/2] kbuild: Rename extrawarn Kconfig to KBUILD_EXTRA_CC_CHECKS

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXZqKpLcp7xmXEezquaCfKLiPS16gwrbcce105gjYftBg%40mail.gmail.com.

--000000000000c516d505912f7bdc
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-kbuild-Improve-extrawarn-documentation.patch"
Content-Disposition: attachment; 
	filename="0001-kbuild-Improve-extrawarn-documentation.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jzvg1uqs0>
X-Attachment-Id: f_jzvg1uqs0

RnJvbSAxMjc1ZWMwZjFkMzFjNGFjNTdiNzNiMzE4YmRjNDUxNTFkOTllOGRjIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAY3JlZGF0aXYuZGU+
CkRhdGU6IFdlZCwgMjggQXVnIDIwMTkgMTY6Mjc6MTMgKzAyMDAKU3ViamVjdDogW1BBVENIIDEv
Ml0ga2J1aWxkOiBJbXByb3ZlIGV4dHJhd2FybiBkb2N1bWVudGF0aW9uCgotLS0KIERvY3VtZW50
YXRpb24va2J1aWxkL2tidWlsZC5yc3QgfCAxMCArKysrKysrKy0tCiBzY3JpcHRzL01ha2VmaWxl
LmV4dHJhd2FybiAgICAgIHwgIDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24va2J1aWxkL2tidWls
ZC5yc3QgYi9Eb2N1bWVudGF0aW9uL2tidWlsZC9rYnVpbGQucnN0CmluZGV4IDYyZjlkODZjMDgy
Yy4uZjBmMWM0NzVkN2ZhIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2tidWlsZC9rYnVpbGQu
cnN0CisrKyBiL0RvY3VtZW50YXRpb24va2J1aWxkL2tidWlsZC5yc3QKQEAgLTI0Myw4ICsyNDMs
MTQgQEAgVG8gZ2V0IGFsbCBhdmFpbGFibGUgYXJjaHMgeW91IGNhbiBhbHNvIHNwZWNpZnkgYWxs
LiBFLmcuOjoKIAogS0JVSUxEX0VOQUJMRV9FWFRSQV9HQ0NfQ0hFQ0tTCiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KLUlmIGVuYWJsZWQgb3ZlciB0aGUgbWFrZSBjb21tYW5kIGxpbmUg
d2l0aCAiVz0xIiwgaXQgdHVybnMgb24gYWRkaXRpb25hbAotZ2NjIC1XLi4uIG9wdGlvbnMgZm9y
IG1vcmUgZXh0ZW5zaXZlIGJ1aWxkLXRpbWUgY2hlY2tpbmcuCitJZiBlbmFibGVkIG92ZXIgdGhl
IG1ha2UgY29tbWFuZCBsaW5lIHdpdGggIlc9Li4uIiwgaXQgdHVybnMgb24gYWRkaXRpb25hbAor
Y29tcGlsZXIgd2FybmluZyBvcHRpb25zIGxpa2UgLVdtaXNzaW5nLWRlY2xhcmF0aW9ucyBmb3Ig
bW9yZSBleHRlbnNpdmUKK2J1aWxkLXRpbWUgY2hlY2tpbmcuIEZvciBtb3JlIGRldGFpbHMgc2Vl
IDxzY3JpcHRzL01ha2VmaWxlLmV4dHJhd2Fybj4uCisKK1c9MSAtIHdhcm5pbmdzIHRoYXQgbWF5
IGJlIHJlbGV2YW50IGFuZCBkb2VzIG5vdCBvY2N1ciB0b28gb2Z0ZW4KK1c9MSAtIGFsc28gc3Rv
cHMgc3VwcHJlc3Npbmcgc29tZSB3YXJuaW5ncworVz0yIC0gd2FybmluZ3MgdGhhdCBvY2N1ciBx
dWl0ZSBvZnRlbiBidXQgbWF5IHN0aWxsIGJlIHJlbGV2YW50CitXPTMgLSB0aGUgbW9yZSBvYnNj
dXJlIHdhcm5pbmdzLCBjYW4gbW9zdCBsaWtlbHkgYmUgaWdub3JlZAogCiBLQlVJTERfQlVJTERf
VElNRVNUQU1QCiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmRpZmYgLS1naXQgYS9zY3JpcHRzL01h
a2VmaWxlLmV4dHJhd2FybiBiL3NjcmlwdHMvTWFrZWZpbGUuZXh0cmF3YXJuCmluZGV4IDNhZjE3
NzA0OTdmZC4uNjc3MGY4ZGE0ZTZkIDEwMDY0NAotLS0gYS9zY3JpcHRzL01ha2VmaWxlLmV4dHJh
d2FybgorKysgYi9zY3JpcHRzL01ha2VmaWxlLmV4dHJhd2FybgpAQCAtMzIsNyArMzIsNyBAQCBL
QlVJTERfQ1BQRkxBR1MgKz0gLURLQlVJTERfRVhUUkFfV0FSTjEKIAogZWxzZQogCi0jIFc9MSBh
bHNvIHN0b3BzIHN1cHByZXNzaW5nIHNvbWUgd2FybmluZ3MKKyMgVz0xIC0gYWxzbyBzdG9wcyBz
dXBwcmVzc2luZyBzb21lIHdhcm5pbmdzCiAKIGlmZGVmIENPTkZJR19DQ19JU19DTEFORwogS0JV
SUxEX0NGTEFHUyArPSAtV25vLWluaXRpYWxpemVyLW92ZXJyaWRlcwotLSAKMi4yMC4xCgo=
--000000000000c516d505912f7bdc
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0002-kbuild-Rename-extrawarn-Kconfig-to-KBUILD_EXTRA_CC_C.patch"
Content-Disposition: attachment; 
	filename="0002-kbuild-Rename-extrawarn-Kconfig-to-KBUILD_EXTRA_CC_C.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jzvg1wty1>
X-Attachment-Id: f_jzvg1wty1

RnJvbSBiMzY0ODgxZjhiMmE3YWEyNThkY2RiYWJhOGQ2YmM1N2I0MWRlZjBkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAY3JlZGF0aXYuZGU+
CkRhdGU6IFdlZCwgMjggQXVnIDIwMTkgMTY6MzA6MDMgKzAyMDAKU3ViamVjdDogW1BBVENIIDIv
Ml0ga2J1aWxkOiBSZW5hbWUgZXh0cmF3YXJuIEtjb25maWcgdG8KIEtCVUlMRF9FWFRSQV9DQ19D
SEVDS1MKCi0tLQogRG9jdW1lbnRhdGlvbi9rYnVpbGQva2J1aWxkLnJzdCB8IDIgKy0KIHNjcmlw
dHMvTWFrZWZpbGUuYnVpbGQgICAgICAgICAgfCAyICstCiBzY3JpcHRzL01ha2VmaWxlLmV4dHJh
d2FybiAgICAgIHwgOCArKysrLS0tLQogc2NyaXB0cy9NYWtlZmlsZS5saWIgICAgICAgICAgICB8
IDQgKystLQogc2NyaXB0cy9nZW5rc3ltcy9NYWtlZmlsZSAgICAgICB8IDIgKy0KIDUgZmlsZXMg
Y2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24va2J1aWxkL2tidWlsZC5yc3QgYi9Eb2N1bWVudGF0aW9uL2tidWlsZC9rYnVp
bGQucnN0CmluZGV4IGYwZjFjNDc1ZDdmYS4uZGNjODNkOTkzNDU5IDEwMDY0NAotLS0gYS9Eb2N1
bWVudGF0aW9uL2tidWlsZC9rYnVpbGQucnN0CisrKyBiL0RvY3VtZW50YXRpb24va2J1aWxkL2ti
dWlsZC5yc3QKQEAgLTI0MSw3ICsyNDEsNyBAQCBUbyBnZXQgYWxsIGF2YWlsYWJsZSBhcmNocyB5
b3UgY2FuIGFsc28gc3BlY2lmeSBhbGwuIEUuZy46OgogCiAgICAgJCBtYWtlIEFMTFNPVVJDRV9B
UkNIUz1hbGwgdGFncwogCi1LQlVJTERfRU5BQkxFX0VYVFJBX0dDQ19DSEVDS1MKK0tCVUlMRF9F
WFRSQV9DQ19DSEVDS1MKIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogSWYgZW5hYmxl
ZCBvdmVyIHRoZSBtYWtlIGNvbW1hbmQgbGluZSB3aXRoICJXPS4uLiIsIGl0IHR1cm5zIG9uIGFk
ZGl0aW9uYWwKIGNvbXBpbGVyIHdhcm5pbmcgb3B0aW9ucyBsaWtlIC1XbWlzc2luZy1kZWNsYXJh
dGlvbnMgZm9yIG1vcmUgZXh0ZW5zaXZlCmRpZmYgLS1naXQgYS9zY3JpcHRzL01ha2VmaWxlLmJ1
aWxkIGIvc2NyaXB0cy9NYWtlZmlsZS5idWlsZAppbmRleCAyYTIxY2E4NmI3MjAuLjFkZTliOWRk
ZGRhYSAxMDA2NDQKLS0tIGEvc2NyaXB0cy9NYWtlZmlsZS5idWlsZAorKysgYi9zY3JpcHRzL01h
a2VmaWxlLmJ1aWxkCkBAIC04NSw3ICs4NSw3IEBAIGVsc2UgaWZlcSAoJChLQlVJTERfQ0hFQ0tT
UkMpLDIpCiAgICAgICAgIGNtZF9mb3JjZV9jaGVja3NyYyA9ICQoQ0hFQ0spICQoQ0hFQ0tGTEFH
UykgJChjX2ZsYWdzKSAkPAogZW5kaWYKIAotaWZuZXEgKCQoS0JVSUxEX0VOQUJMRV9FWFRSQV9H
Q0NfQ0hFQ0tTKSwpCitpZm5lcSAoJChLQlVJTERfRVhUUkFfQ0NfQ0hFQ0tTKSwpCiAgIGNtZF9j
aGVja2RvYyA9ICQoc3JjdHJlZSkvc2NyaXB0cy9rZXJuZWwtZG9jIC1ub25lICQ8CiBlbmRpZgog
CmRpZmYgLS1naXQgYS9zY3JpcHRzL01ha2VmaWxlLmV4dHJhd2FybiBiL3NjcmlwdHMvTWFrZWZp
bGUuZXh0cmF3YXJuCmluZGV4IDY3NzBmOGRhNGU2ZC4uMGVlNGE1YTg4ZDJjIDEwMDY0NAotLS0g
YS9zY3JpcHRzL01ha2VmaWxlLmV4dHJhd2FybgorKysgYi9zY3JpcHRzL01ha2VmaWxlLmV4dHJh
d2FybgpAQCAtNiwxMyArNiwxMyBAQAogS0JVSUxEX0NGTEFHUyArPSAkKGNhbGwgY2MtZGlzYWJs
ZS13YXJuaW5nLCBwYWNrZWQtbm90LWFsaWduZWQpCiAKIGlmZXEgKCIkKG9yaWdpbiBXKSIsICJj
b21tYW5kIGxpbmUiKQotICBleHBvcnQgS0JVSUxEX0VOQUJMRV9FWFRSQV9HQ0NfQ0hFQ0tTIDo9
ICQoVykKKyAgZXhwb3J0IEtCVUlMRF9FWFRSQV9DQ19DSEVDS1MgOj0gJChXKQogZW5kaWYKIAog
IwogIyBXPTEgLSB3YXJuaW5ncyB0aGF0IG1heSBiZSByZWxldmFudCBhbmQgZG9lcyBub3Qgb2Nj
dXIgdG9vIG9mdGVuCiAjCi1pZm5lcSAoJChmaW5kc3RyaW5nIDEsICQoS0JVSUxEX0VOQUJMRV9F
WFRSQV9HQ0NfQ0hFQ0tTKSksKQoraWZuZXEgKCQoZmluZHN0cmluZyAxLCAkKEtCVUlMRF9FWFRS
QV9DQ19DSEVDS1MpKSwpCiAKIEtCVUlMRF9DRkxBR1MgKz0gLVdleHRyYSAtV3VudXNlZCAtV25v
LXVudXNlZC1wYXJhbWV0ZXIKIEtCVUlMRF9DRkxBR1MgKz0gLVdtaXNzaW5nLWRlY2xhcmF0aW9u
cwpAQCAtNDYsNyArNDYsNyBAQCBlbmRpZgogIwogIyBXPTIgLSB3YXJuaW5ncyB0aGF0IG9jY3Vy
IHF1aXRlIG9mdGVuIGJ1dCBtYXkgc3RpbGwgYmUgcmVsZXZhbnQKICMKLWlmbmVxICgkKGZpbmRz
dHJpbmcgMiwgJChLQlVJTERfRU5BQkxFX0VYVFJBX0dDQ19DSEVDS1MpKSwpCitpZm5lcSAoJChm
aW5kc3RyaW5nIDIsICQoS0JVSUxEX0VYVFJBX0NDX0NIRUNLUykpLCkKIAogS0JVSUxEX0NGTEFH
UyArPSAtV2Nhc3QtYWxpZ24KIEtCVUlMRF9DRkxBR1MgKz0gLVdkaXNhYmxlZC1vcHRpbWl6YXRp
b24KQEAgLTY1LDcgKzY1LDcgQEAgZW5kaWYKICMKICMgVz0zIC0gdGhlIG1vcmUgb2JzY3VyZSB3
YXJuaW5ncywgY2FuIG1vc3QgbGlrZWx5IGJlIGlnbm9yZWQKICMKLWlmbmVxICgkKGZpbmRzdHJp
bmcgMywgJChLQlVJTERfRU5BQkxFX0VYVFJBX0dDQ19DSEVDS1MpKSwpCitpZm5lcSAoJChmaW5k
c3RyaW5nIDMsICQoS0JVSUxEX0VYVFJBX0NDX0NIRUNLUykpLCkKIAogS0JVSUxEX0NGTEFHUyAr
PSAtV2JhZC1mdW5jdGlvbi1jYXN0CiBLQlVJTERfQ0ZMQUdTICs9IC1XY2FzdC1xdWFsCmRpZmYg
LS1naXQgYS9zY3JpcHRzL01ha2VmaWxlLmxpYiBiL3NjcmlwdHMvTWFrZWZpbGUubGliCmluZGV4
IDg4OGU1YzgzMDY0Ni4uMWY5ZTM4NTUwY2U0IDEwMDY0NAotLS0gYS9zY3JpcHRzL01ha2VmaWxl
LmxpYgorKysgYi9zY3JpcHRzL01ha2VmaWxlLmxpYgpAQCAtMjQ4LDcgKzI0OCw3IEBAIHF1aWV0
X2NtZF9nemlwID0gR1pJUCAgICAkQAogRFRDID89ICQob2JqdHJlZSkvc2NyaXB0cy9kdGMvZHRj
CiAKICMgRGlzYWJsZSBub2lzeSBjaGVja3MgYnkgZGVmYXVsdAotaWZlcSAoJChmaW5kc3RyaW5n
IDEsJChLQlVJTERfRU5BQkxFX0VYVFJBX0dDQ19DSEVDS1MpKSwpCitpZmVxICgkKGZpbmRzdHJp
bmcgMSwkKEtCVUlMRF9FWFRSQV9DQ19DSEVDS1MpKSwpCiBEVENfRkxBR1MgKz0gLVduby11bml0
X2FkZHJlc3NfdnNfcmVnIFwKIAktV25vLXVuaXRfYWRkcmVzc19mb3JtYXQgXAogCS1Xbm8tYXZv
aWRfdW5uZWNlc3NhcnlfYWRkcl9zaXplIFwKQEAgLTI1OSw3ICsyNTksNyBAQCBEVENfRkxBR1Mg
Kz0gLVduby11bml0X2FkZHJlc3NfdnNfcmVnIFwKIAktV25vLXBjaV9kZXZpY2VfcmVnCiBlbmRp
ZgogCi1pZm5lcSAoJChmaW5kc3RyaW5nIDIsJChLQlVJTERfRU5BQkxFX0VYVFJBX0dDQ19DSEVD
S1MpKSwpCitpZm5lcSAoJChmaW5kc3RyaW5nIDIsJChLQlVJTERfRVhUUkFfQ0NfQ0hFQ0tTKSks
KQogRFRDX0ZMQUdTICs9IC1Xbm9kZV9uYW1lX2NoYXJzX3N0cmljdCBcCiAJLVdwcm9wZXJ0eV9u
YW1lX2NoYXJzX3N0cmljdAogZW5kaWYKZGlmZiAtLWdpdCBhL3NjcmlwdHMvZ2Vua3N5bXMvTWFr
ZWZpbGUgYi9zY3JpcHRzL2dlbmtzeW1zL01ha2VmaWxlCmluZGV4IGJhZjQ0ZWQwYTkzYS4uZTA4
ZmMzYTZmN2UyIDEwMDY0NAotLS0gYS9zY3JpcHRzL2dlbmtzeW1zL01ha2VmaWxlCisrKyBiL3Nj
cmlwdHMvZ2Vua3N5bXMvTWFrZWZpbGUKQEAgLTEyLDcgKzEyLDcgQEAgZ2Vua3N5bXMtb2Jqcwk6
PSBnZW5rc3ltcy5vIHBhcnNlLnRhYi5vIGxleC5sZXgubwogIwogIyBKdXN0IGluIGNhc2UsIHJ1
biAiJChZQUNDKSAtLXZlcnNpb24iIHdpdGhvdXQgc3VwcHJlc3Npbmcgc3RkZXJyCiAjIHNvIHRo
YXQgJ2Jpc29uOiBub3QgZm91bmQnIHdpbGwgYmUgZGlzcGxheWVkIGlmIGl0IGlzIG1pc3Npbmcu
Ci1pZmVxICgkKGZpbmRzdHJpbmcgMSwkKEtCVUlMRF9FTkFCTEVfRVhUUkFfR0NDX0NIRUNLUykp
LCkKK2lmZXEgKCQoZmluZHN0cmluZyAxLCQoS0JVSUxEX0VYVFJBX0NDX0NIRUNLUykpLCkKIAog
cXVpZXRfY21kX2Jpc29uX25vX3dhcm4gPSAkKHF1aWV0X2NtZF9iaXNvbikKICAgICAgIGNtZF9i
aXNvbl9ub193YXJuID0gJChZQUNDKSAtLXZlcnNpb24gPi9kZXYvbnVsbDsgXAotLSAKMi4yMC4x
Cgo=
--000000000000c516d505912f7bdc--
