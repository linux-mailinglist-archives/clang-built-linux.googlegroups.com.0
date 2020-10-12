Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGVTSP6AKGQE4UMGSMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 930DC28C4CA
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 00:32:59 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id k9sf13275125pgq.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 15:32:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602541978; cv=pass;
        d=google.com; s=arc-20160816;
        b=IeRkyshoM+7EOpEkopMrioXOZD6V5KxmU6BUqwalbE8yassTc0PlhIUEncWTaBIqOM
         J8Jt63WOTrrETQyxHa0N4FOQPASNdXFpDpm99v4fizfzp+tYM00vGRR7LVKsTsupZP3l
         wrdqFmQ7K5Lv3JPZsrgL5GTkIuHLglJcmUOnlkuCfrURcWsZXbkgcDf3jPEYCLEiqbok
         /VzRfb0O4xNv9HLb9c7EpQT5rbOsIgel+GEuhWVAEpCkQaCDlfOwVVZ1EC718tW4EPXH
         1jMv/UREN4/n5yEI4vab6q5H725aYPo+HtQpZ/QUZZQ4kY0Z1VTnE9tB12AQU65ABg6m
         OsdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=MUhdmizG0IVJY53Nk/QPR8x8IphuVi5Mg3DSDbrjMnw=;
        b=XpXt/NRYmddNeGkikaSOFKUPXPuUTsRtKEsz9w9mf6An20Jb/w3OtFl+Z8iZ41z/Ka
         mFfw1jIPPNva95jQgQSaHGvNoolAyxve/ftCauMo2svv5L0xhP+8x2cpzfMxfIKLyZVt
         aJ4noUoVuWXst31qc0nFQrRqdgJTa+skfNOOEoG6chtOgHtho1bnYxvWzh4zdm/zQSfB
         pGnZ3tGe9TUICUzwcW5OGL+ZpEN3eX261wP0jEkSDu5F7i7Geyhu89dj0wMOI/8Ax/wv
         fA9zSfEJhgKxeP9cQUFjXMcKlsDNFQFvActAfmSeJCbsigbI9mTABN0pb2+T+ljlnM9x
         Z6iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Spbywymt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=MUhdmizG0IVJY53Nk/QPR8x8IphuVi5Mg3DSDbrjMnw=;
        b=XI70+atRn7ual23xdlZ+hhvkcrvzr3HL1zNiWdDRBDXUOq7OdozkNA76TzvSu2heRo
         gLorUU/2cWsTIC96xEXMp/my80t9Wk73HGMTwgEy+VAbv1UgptNZZNL5rDEZLfXAraTa
         gdZt2l97yuZSMnqZOQBFcbpFeDK7bNF7SevIsw8wIWKfotvNCo89lZKgphLdhjt2AGna
         1IQNsDRddqZKetEW9cyQE2MzJ4wKvq8ELAMTD9Kiks5ja1BIOQTDudYeCazIIPOZBoJ3
         RuDUPi5hhNoFc686diinfHQ2uO2s+CSnpCVPpq7kSzdYkdxCU37JfyAXrQXLouUOghqM
         ZCGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MUhdmizG0IVJY53Nk/QPR8x8IphuVi5Mg3DSDbrjMnw=;
        b=CXP5z6Bm6ecQlAC2jsgLCeLi1Rz9BrDwGAsqyCJWaYLG04SPTkAU5XmAEGsq31LMeP
         IqCrHAJOvfulglDMDIrAh6WndiPjO2hp41XEVq7lda4fr3KucUKPBPJsfGKtZKesRaVY
         SQGzk3nK8PpvYn+x9c8R8vMl9vLjxjFy/H+9Nc4FGUWfRxTMPYGPIa1+ByL0A3/j6Qpg
         90a+8sbfoWLcRM9neIWTfhmJCktZsI2VTHmCDaGjJZ+DMPzjdHDvPOMP8GONNYqjtipo
         T7YxH5JsGCP1FxM3Il7JBU+EgWcowKF/DSRbFtZmN/qFuY5BFr9xa5xyQ7FVr6CF8wU0
         fjnQ==
X-Gm-Message-State: AOAM533SvgvDozn75rhVeeDVa3+dHnTsDWMb7ZzkZi0y87jhLcpLc387
	LoIPKPVDGpOCa6YpO8J7K5c=
X-Google-Smtp-Source: ABdhPJx+uaPPFIE1/FB9cESdul8PKCmFxMKwvujDHeLQmC1p7Xq5yF8/X0wQ6N0aNkBZx+nLzmGizg==
X-Received: by 2002:a65:5a0d:: with SMTP id y13mr14908669pgs.436.1602541978215;
        Mon, 12 Oct 2020 15:32:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b596:: with SMTP id a22ls8180527pls.7.gmail; Mon, 12
 Oct 2020 15:32:57 -0700 (PDT)
X-Received: by 2002:a17:90a:bd97:: with SMTP id z23mr23076626pjr.191.1602541977714;
        Mon, 12 Oct 2020 15:32:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602541977; cv=none;
        d=google.com; s=arc-20160816;
        b=GjDN/O0jwYgS5cJYJoT1saIncmj87g8K07e0fvre/qqTIY4Jvpw3dlqw79tzcgh+U2
         np2P4efJL+dlRmh0qddeuGGAFqB55BG7pnhEKmfulxAjhVn3Kc3eImjj9S/NTLny4Mmb
         F76wtdotQWCGdvtyUUFbawap/iC4HaxISjppmBmt18cYhM5V22dc4cWuQVg8sgNxuyBR
         Z21EBRmT85jnqb8Huf/Vd/si9PaAt2uwNbmXlLJb5JMZXomMpZliL4+ji38vE4+2d5S4
         TweDTj5AhWXV2pD5Rx3/csy/jSEmlrjeIQGFx6dZQ7LbnZVIgKwVV6vvyqp3paIWBvf3
         qblg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=0p1xZm0lO43Wq2Pshg/s4Pw9+YyfLbjNVBtjjMP2OCA=;
        b=Tw/CEJISbfyQlrGFsmhPE28w3vG7eUkURbgdYp63DZlyaEMkxAgDUO40ulYlXuihmv
         V3bA94jPxSCo+cHvS3nMwxDgRrrKt8r7SIskQhGbp0InLyDJQglc0fWj1LpQHwyC9Gug
         ki7PV/XZYpnyJpLM4UhCwnHDXdyi5IujdRNV5NwMio2Of0pnO6ZkstY2SZaLK7iTIS+I
         rfthwFgeKxk5LBb0QdNQa7iELU1ze5bik/PMEOrv75BSHwv/49T5dN507Wgp9j9OSWDu
         jyfmLX3M53atnDtIWOUJ2eJXGp5aeC7T1jJziRY6TZVo/iQdK9dLNNVIxAOnbMnigqla
         M96g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Spbywymt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id a5si1272822pfd.5.2020.10.12.15.32.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 15:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id y14so15816739pgf.12
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 15:32:57 -0700 (PDT)
X-Received: by 2002:a17:90a:3b48:: with SMTP id t8mr22439487pjf.32.1602541977057;
 Mon, 12 Oct 2020 15:32:57 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Oct 2020 15:32:46 -0700
Message-ID: <CAKwvOdnBqCT0XG298nLqE7=WvxrYJFqV6jZ8-fZX0fF67bLQBQ@mail.gmail.com>
Subject: llvm-nm and lld patches for arm32
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: "# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Russell King <rmk+kernel@arm.linux.org.uk>, Dmitry Golovin <dima@golovin.in>, 
	=?UTF-8?Q?Matthias_M=C3=A4nnich?= <maennich@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: multipart/mixed; boundary="00000000000048160d05b180e12d"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Spbywymt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534
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

--00000000000048160d05b180e12d
Content-Type: text/plain; charset="UTF-8"

Dear Stable Maintainers,
Please consider cherry-picking:

commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to
link VDSO")

to linux-4.19.y.

It cherry picks cleanly and first landed in v5.2-rc1.

It allows us to more easily use ld.lld on arm32 for Android.


Also, please consider cherry-picking:

commit 29c623d64f0d ("ARM: 8939/1: kbuild: use correct nm executable")

to both linux-5.4.y and linux-4.19.y.

It cherry picks cleanly and first landed in v5.5-rc1.

It allows us to more easily use llvm-nm on arm32 for Android.


I've attached both backports as mbox files. Please let me know if it
would be preferable in the future for me to have one email per patch
being backported.  I tested both locally, and the patches are passing
our presubmit testing in Android.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnBqCT0XG298nLqE7%3DWvxrYJFqV6jZ8-fZX0fF67bLQBQ%40mail.gmail.com.

--00000000000048160d05b180e12d
Content-Type: application/octet-stream; name="5.4.arm.llvm-nm.mbox"
Content-Disposition: attachment; filename="5.4.arm.llvm-nm.mbox"
Content-Transfer-Encoding: base64
Content-ID: <f_kg73yb2k0>
X-Attachment-Id: f_kg73yb2k0

RnJvbSA1OTc3MGUxZjliNmU0YjkzOWNkYzBjZjFiZWUyZTk0MzI1YWJjMjNhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEbWl0cnkgR29sb3ZpbiA8ZGltYUBnb2xvdmluLmluPgpEYXRl
OiBUdWUsIDE5IE5vdiAyMDE5IDE2OjM5OjQyICswMTAwClN1YmplY3Q6IFtQQVRDSF0gQVJNOiA4
OTM5LzE6IGtidWlsZDogdXNlIGNvcnJlY3Qgbm0gZXhlY3V0YWJsZQoKY29tbWl0IDI5YzYyM2Q2
NGYwZGNkNmFhMTBlMGVhYmQxNjIzM2U3NzExNDA5MGIgdXBzdHJlYW0uCgpTaW5jZSAkKE5NKSB2
YXJpYWJsZSBjYW4gYmUgZWFzaWx5IG92ZXJyaWRkZW4gZm9yIHRoZSB3aG9sZSBidWlsZCwgaXQn
cwpiZXR0ZXIgdG8gdXNlIGl0IGluc3RlYWQgb2YgJChDUk9TU19DT01QSUxFKW5tLiBUaGUgdXNl
IG9mICQoQ1JPU1NfQ09NUElMRSkKcHJlZml4ZWQgdmFyaWFibGVzIHdoZXJlIHRoZWlyIGNhbGN1
bGF0ZWQgZXF1aXZhbGVudHMgY2FuIGJlIHVzZWQgaXMKaW5jb3JyZWN0LiBUaGlzIGZpeGVzIGlz
c3VlcyB3aXRoIGJ1aWxkcyB3aGVyZSAkKE5NKSBpcyBzZXQgdG8gbGx2bS1ubS4KCkxpbms6IGh0
dHBzOi8vZ2l0aHViLmNvbS9DbGFuZ0J1aWx0TGludXgvbGludXgvaXNzdWVzLzc2NgoKU2lnbmVk
LW9mZi1ieTogRG1pdHJ5IEdvbG92aW4gPGRpbWFAZ29sb3Zpbi5pbj4KU3VnZ2VzdGVkLWJ5OiBO
aWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KQ2M6IE1hdHRoaWFzIE1h
ZW5uaWNoIDxtYWVubmljaEBnb29nbGUuY29tPgpSZXZpZXdlZC1ieTogTmF0aGFuIENoYW5jZWxs
b3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4KVGVzdGVkLWJ5OiBOYXRoYW4gQ2hhbmNlbGxv
ciA8bmF0ZWNoYW5jZWxsb3JAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogTWFzYWhpcm8gWWFtYWRh
IDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KUmV2aWV3ZWQtYnk6IE5pY2sgRGVzYXVs
bmllcnMgPG5kZXNhdWxuaWVyc0Bnb29nbGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBSdXNzZWxsIEtp
bmcgPHJtaytrZXJuZWxAYXJtbGludXgub3JnLnVrPgpTaWduZWQtb2ZmLWJ5OiBOaWNrIERlc2F1
bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2NvbXBy
ZXNzZWQvTWFrZWZpbGUgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01h
a2VmaWxlIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlCmluZGV4IDE0ODM5NjZk
Y2YyMy4uNmRhNjc3ODlhYzIyIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2NvbXByZXNzZWQv
TWFrZWZpbGUKKysrIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlCkBAIC0xMjEs
NyArMTIxLDcgQEAgY2NmbGFncy15IDo9IC1mcGljICQoY2FsbCBjYy1vcHRpb24sLW1uby1zaW5n
bGUtcGljLWJhc2UsKSAtZm5vLWJ1aWx0aW4gXAogYXNmbGFncy15IDo9IC1EWklNQUdFCiAKICMg
U3VwcGx5IGtlcm5lbCBCU1Mgc2l6ZSB0byB0aGUgZGVjb21wcmVzc29yIHZpYSBhIGxpbmtlciBz
eW1ib2wuCi1LQlNTX1NaID0gJChzaGVsbCBlY2hvICQkKCgkJCgkKENST1NTX0NPTVBJTEUpbm0g
JChvYmopLy4uLy4uLy4uLy4uL3ZtbGludXggfCBcCitLQlNTX1NaID0gJChzaGVsbCBlY2hvICQk
KCgkJCgkKE5NKSAkKG9iaikvLi4vLi4vLi4vLi4vdm1saW51eCB8IFwKIAkJc2VkIC1uIC1lICdz
L15cKFteIF0qXCkgW0FCXSBfX2Jzc19zdGFydCQkLy0weFwxL3AnIFwKIAkJICAgICAgIC1lICdz
L15cKFteIF0qXCkgW0FCXSBfX2Jzc19zdG9wJCQvKzB4XDEvcCcpICkpICkKIExERkxBR1Nfdm1s
aW51eCA9IC0tZGVmc3ltIF9rZXJuZWxfYnNzX3NpemU9JChLQlNTX1NaKQpAQCAtMTY1LDcgKzE2
NSw3IEBAICQob2JqKS9ic3dhcHNkaTIuUzogJChzcmN0cmVlKS9hcmNoLyQoU1JDQVJDSCkvbGli
L2Jzd2Fwc2RpMi5TCiAjIFRoZSAuZGF0YSBzZWN0aW9uIGlzIGFscmVhZHkgZGlzY2FyZGVkIGJ5
IHRoZSBsaW5rZXIgc2NyaXB0IHNvIG5vIG5lZWQKICMgdG8gYm90aGVyIGFib3V0IGl0IGhlcmUu
CiBjaGVja19mb3JfYmFkX3N5bXMgPSBcCi1iYWRfc3ltcz0kJCgkKENST1NTX0NPTVBJTEUpbm0g
JEAgfCBzZWQgLW4gJ3MvXi5cezhcfSBbYmNdIFwoLipcKS9cMS9wJykgJiYgXAorYmFkX3N5bXM9
JCQoJChOTSkgJEAgfCBzZWQgLW4gJ3MvXi5cezhcfSBbYmNdIFwoLipcKS9cMS9wJykgJiYgXAog
WyAteiAiJCRiYWRfc3ltcyIgXSB8fCBcCiAgICggZWNobyAiZm9sbG93aW5nIHN5bWJvbHMgbXVz
dCBoYXZlIG5vbiBsb2NhbC9wcml2YXRlIHNjb3BlOiIgPiYyOyBcCiAgICAgZWNobyAiJCRiYWRf
c3ltcyIgPiYyOyBmYWxzZSApCi0tIAoyLjI4LjAuMTAxMS5nYTY0N2E4OTkwZi1nb29nCgo=
--00000000000048160d05b180e12d
Content-Type: application/octet-stream; name="4.19.arm.lld.llvm-nm.mbox"
Content-Disposition: attachment; filename="4.19.arm.lld.llvm-nm.mbox"
Content-Transfer-Encoding: base64
Content-ID: <f_kg73yb3g1>
X-Attachment-Id: f_kg73yb3g1

RnJvbSA2YjFkMDJlNzk2NDA4ZmZjNDM2ZDk1MGUzMjJiMjA1NzAwYzU1ZmI0IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXNhaGlybyBZYW1hZGEgPHlhbWFkYS5tYXNhaGlyb0Bzb2Np
b25leHQuY29tPgpEYXRlOiBUaHUsIDE4IEFwciAyMDE5IDEwOjU3OjQ5ICswMTAwClN1YmplY3Q6
IFtQQVRDSCAxLzJdIEFSTTogODg1OC8xOiB2ZHNvOiB1c2UgJChMRCkgaW5zdGVhZCBvZiAkKEND
KSB0byBsaW5rCiBWRFNPCgpjb21taXQgZmUwMGU1MGIyZGI4YzYwZTRlYzkwYmVmYWQxZjViYWI4
Y2EyYzgwMCB1cHN0cmVhbS4KCldlIHVzZSAkKExEKSB0byBsaW5rIHZtbGludXgsIG1vZHVsZXMs
IGRlY29tcHJlc3NvcnMsIGV0Yy4KClZEU08gaXMgdGhlIG9ubHkgZXhjZXB0aW9uYWwgY2FzZSB3
aGVyZSAkKENDKSBpcyB1c2VkIGFzIHRoZSBsaW5rZXIKZHJpdmVyLCBidXQgSSBkbyBub3Qga25v
dyB3aHkgd2UgbmVlZCB0byBkbyBzby4gVkRTTyB1c2VzIGEgc3BlY2lhbApsaW5rZXIgc2NyaXB0
LCBhbmQgZG9lcyBub3QgbGluayBzdGFuZGFyZCBsaWJyYXJpZXMgYXQgYWxsLgoKSSBjaGFuZ2Vk
IHRoZSBNYWtlZmlsZSB0byB1c2UgJChMRCkgcmF0aGVyIHRoYW4gJChDQykuIEkgY29uZmlybWVk
CnRoZSBzYW1lIHZkc28uc28ucmF3IHdhcyBzdGlsbCBwcm9kdWNlZC4KClVzZXJzIHdpbGwgYmUg
YWJsZSB0byB1c2UgdGhlaXIgZmF2b3JpdGUgbGlua2VyIChlLmcuIGxsZCBpbnN0ZWFkIG9mCm9m
IGJmZCkgYnkgcGFzc2luZyBMRD0gZnJvbSB0aGUgY29tbWFuZCBsaW5lLgoKTXkgcGxhbiBpcyB0
byByZXdyaXRlIGFsbCBWRFNPIE1ha2VmaWxlcyB0byB1c2UgJChMRCksIHRoZW4gZGVsZXRlCgpj
Yy1sZG9wdGlvbi4KClNpZ25lZC1vZmYtYnk6IE1hc2FoaXJvIFlhbWFkYSA8eWFtYWRhLm1hc2Fo
aXJvQHNvY2lvbmV4dC5jb20+ClJldmlld2VkLWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVs
bmllcnNAZ29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogUnVzc2VsbCBLaW5nIDxybWsra2VybmVs
QGFybWxpbnV4Lm9yZy51az4KU2lnbmVkLW9mZi1ieTogTmljayBEZXNhdWxuaWVycyA8bmRlc2F1
bG5pZXJzQGdvb2dsZS5jb20+Ci0tLQogYXJjaC9hcm0vdmRzby9NYWtlZmlsZSB8IDIxICsrKysr
KysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vdmRzby9NYWtlZmlsZSBiL2FyY2gvYXJt
L3Zkc28vTWFrZWZpbGUKaW5kZXggZjRlZmZmOWQzYWZiLi5mYWRmNTU0ZDkzOTEgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL3Zkc28vTWFrZWZpbGUKKysrIGIvYXJjaC9hcm0vdmRzby9NYWtlZmlsZQpA
QCAtMTAsMTIgKzEwLDEyIEBAIG9iai12ZHNvIDo9ICQoYWRkcHJlZml4ICQob2JqKS8sICQob2Jq
LXZkc28pKQogY2NmbGFncy15IDo9IC1mUElDIC1mbm8tY29tbW9uIC1mbm8tYnVpbHRpbiAtZm5v
LXN0YWNrLXByb3RlY3RvcgogY2NmbGFncy15ICs9IC1ERElTQUJMRV9CUkFOQ0hfUFJPRklMSU5H
CiAKLVZEU09fTERGTEFHUyA6PSAtV2wsLUJzeW1ib2xpYyAtV2wsLS1uby11bmRlZmluZWQgLVds
LC1zb25hbWU9bGludXgtdmRzby5zby4xCi1WRFNPX0xERkxBR1MgKz0gLVdsLC16LG1heC1wYWdl
LXNpemU9NDA5NiAtV2wsLXosY29tbW9uLXBhZ2Utc2l6ZT00MDk2Ci1WRFNPX0xERkxBR1MgKz0g
LW5vc3RkbGliIC1zaGFyZWQKLVZEU09fTERGTEFHUyArPSAkKGNhbGwgY2MtbGRvcHRpb24sIC1X
bCQoY29tbWEpLS1oYXNoLXN0eWxlPXN5c3YpCi1WRFNPX0xERkxBR1MgKz0gJChjYWxsIGNjLWxk
b3B0aW9uLCAtV2wkKGNvbW1hKS0tYnVpbGQtaWQpCi1WRFNPX0xERkxBR1MgKz0gJChjYWxsIGNj
LWxkb3B0aW9uLCAtZnVzZS1sZD1iZmQpCitsZGZsYWdzLXkgPSAtQnN5bWJvbGljIC0tbm8tdW5k
ZWZpbmVkIC1zb25hbWU9bGludXgtdmRzby5zby4xIFwKKwkgICAgLXogbWF4LXBhZ2Utc2l6ZT00
MDk2IC16IGNvbW1vbi1wYWdlLXNpemU9NDA5NiBcCisJICAgIC1ub3N0ZGxpYiAtc2hhcmVkIFwK
KwkgICAgJChjYWxsIGxkLW9wdGlvbiwgLS1oYXNoLXN0eWxlPXN5c3YpIFwKKwkgICAgJChjYWxs
IGxkLW9wdGlvbiwgLS1idWlsZC1pZCkgXAorCSAgICAtVAogCiBvYmotJChDT05GSUdfVkRTTykg
Kz0gdmRzby5vCiBleHRyYS0kKENPTkZJR19WRFNPKSArPSB2ZHNvLmxkcwpAQCAtMzcsOCArMzcs
OCBAQCBLQ09WX0lOU1RSVU1FTlQgOj0gbgogJChvYmopL3Zkc28ubyA6ICQob2JqKS92ZHNvLnNv
CiAKICMgTGluayBydWxlIGZvciB0aGUgLnNvIGZpbGUKLSQob2JqKS92ZHNvLnNvLnJhdzogJChz
cmMpL3Zkc28ubGRzICQob2JqLXZkc28pIEZPUkNFCi0JJChjYWxsIGlmX2NoYW5nZWQsdmRzb2xk
KQorJChvYmopL3Zkc28uc28ucmF3OiAkKG9iaikvdmRzby5sZHMgJChvYmotdmRzbykgRk9SQ0UK
KwkkKGNhbGwgaWZfY2hhbmdlZCxsZCkKIAogJChvYmopL3Zkc28uc28uZGJnOiAkKG9iaikvdmRz
by5zby5yYXcgJChvYmopL3Zkc29tdW5nZSBGT1JDRQogCSQoY2FsbCBpZl9jaGFuZ2VkLHZkc29t
dW5nZSkKQEAgLTQ4LDExICs0OCw2IEBAICQob2JqKS8lLnNvOiBPQkpDT1BZRkxBR1MgOj0gLVMK
ICQob2JqKS8lLnNvOiAkKG9iaikvJS5zby5kYmcgRk9SQ0UKIAkkKGNhbGwgaWZfY2hhbmdlZCxv
Ympjb3B5KQogCi0jIEFjdHVhbCBidWlsZCBjb21tYW5kcwotcXVpZXRfY21kX3Zkc29sZCA9IFZE
U08gICAgJEAKLSAgICAgIGNtZF92ZHNvbGQgPSAkKENDKSAkKGNfZmxhZ3MpICQoVkRTT19MREZM
QUdTKSBcCi0gICAgICAgICAgICAgICAgICAgLVdsLC1UICQoZmlsdGVyICUubGRzLCReKSAkKGZp
bHRlciAlLm8sJF4pIC1vICRACi0KIHF1aWV0X2NtZF92ZHNvbXVuZ2UgPSBNVU5HRSAgICRACiAg
ICAgICBjbWRfdmRzb211bmdlID0gJChvYmp0cmVlKS8kKG9iaikvdmRzb211bmdlICQ8ICRACiAK
LS0gCjIuMjguMC4xMDExLmdhNjQ3YTg5OTBmLWdvb2cKCgpGcm9tIDg3ZTNhYjUxZTcyM2Y4MTI1
NTE3ZDU3MjA4MjViMTRiZDBmNmUyNjIgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCkZyb206IERt
aXRyeSBHb2xvdmluIDxkaW1hQGdvbG92aW4uaW4+CkRhdGU6IFR1ZSwgMTkgTm92IDIwMTkgMTY6
Mzk6NDIgKzAxMDAKU3ViamVjdDogW1BBVENIIDIvMl0gQVJNOiA4OTM5LzE6IGtidWlsZDogdXNl
IGNvcnJlY3Qgbm0gZXhlY3V0YWJsZQoKY29tbWl0IDI5YzYyM2Q2NGYwZGNkNmFhMTBlMGVhYmQx
NjIzM2U3NzExNDA5MGIgdXBzdHJlYW0uCgpTaW5jZSAkKE5NKSB2YXJpYWJsZSBjYW4gYmUgZWFz
aWx5IG92ZXJyaWRkZW4gZm9yIHRoZSB3aG9sZSBidWlsZCwgaXQncwpiZXR0ZXIgdG8gdXNlIGl0
IGluc3RlYWQgb2YgJChDUk9TU19DT01QSUxFKW5tLiBUaGUgdXNlIG9mICQoQ1JPU1NfQ09NUElM
RSkKcHJlZml4ZWQgdmFyaWFibGVzIHdoZXJlIHRoZWlyIGNhbGN1bGF0ZWQgZXF1aXZhbGVudHMg
Y2FuIGJlIHVzZWQgaXMKaW5jb3JyZWN0LiBUaGlzIGZpeGVzIGlzc3VlcyB3aXRoIGJ1aWxkcyB3
aGVyZSAkKE5NKSBpcyBzZXQgdG8gbGx2bS1ubS4KCkxpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9D
bGFuZ0J1aWx0TGludXgvbGludXgvaXNzdWVzLzc2NgoKU2lnbmVkLW9mZi1ieTogRG1pdHJ5IEdv
bG92aW4gPGRpbWFAZ29sb3Zpbi5pbj4KU3VnZ2VzdGVkLWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxu
ZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KQ2M6IE1hdHRoaWFzIE1hZW5uaWNoIDxtYWVubmljaEBn
b29nbGUuY29tPgpSZXZpZXdlZC1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9y
QGdtYWlsLmNvbT4KVGVzdGVkLWJ5OiBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0ZWNoYW5jZWxsb3JA
Z21haWwuY29tPgpSZXZpZXdlZC1ieTogTWFzYWhpcm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9A
c29jaW9uZXh0LmNvbT4KUmV2aWV3ZWQtYnk6IE5pY2sgRGVzYXVsbmllcnMgPG5kZXNhdWxuaWVy
c0Bnb29nbGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBSdXNzZWxsIEtpbmcgPHJtaytrZXJuZWxAYXJt
bGludXgub3JnLnVrPgpTaWduZWQtb2ZmLWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmll
cnNAZ29vZ2xlLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2NvbXByZXNzZWQvTWFrZWZpbGUgfCA0
ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlIGIvYXJjaC9hcm0v
Ym9vdC9jb21wcmVzc2VkL01ha2VmaWxlCmluZGV4IDFmNWE1ZmZlN2ZjZi4uYzc2MjAwNDU3MmVm
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvTWFrZWZpbGUKKysrIGIvYXJj
aC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlCkBAIC0xMjAsNyArMTIwLDcgQEAgY2NmbGFn
cy15IDo9IC1mcGljICQoY2FsbCBjYy1vcHRpb24sLW1uby1zaW5nbGUtcGljLWJhc2UsKSAtZm5v
LWJ1aWx0aW4gLUkkKG9iaikKIGFzZmxhZ3MteSA6PSAtRFpJTUFHRQogCiAjIFN1cHBseSBrZXJu
ZWwgQlNTIHNpemUgdG8gdGhlIGRlY29tcHJlc3NvciB2aWEgYSBsaW5rZXIgc3ltYm9sLgotS0JT
U19TWiA9ICQoc2hlbGwgZWNobyAkJCgoJCQoJChDUk9TU19DT01QSUxFKW5tICQob2JqKS8uLi8u
Li8uLi8uLi92bWxpbnV4IHwgXAorS0JTU19TWiA9ICQoc2hlbGwgZWNobyAkJCgoJCQoJChOTSkg
JChvYmopLy4uLy4uLy4uLy4uL3ZtbGludXggfCBcCiAJCXNlZCAtbiAtZSAncy9eXChbXiBdKlwp
IFtBQl0gX19ic3Nfc3RhcnQkJC8tMHhcMS9wJyBcCiAJCSAgICAgICAtZSAncy9eXChbXiBdKlwp
IFtBQl0gX19ic3Nfc3RvcCQkLysweFwxL3AnKSApKSApCiBMREZMQUdTX3ZtbGludXggPSAtLWRl
ZnN5bSBfa2VybmVsX2Jzc19zaXplPSQoS0JTU19TWikKQEAgLTE2Niw3ICsxNjYsNyBAQCAkKG9i
aikvYnN3YXBzZGkyLlM6ICQoc3JjdHJlZSkvYXJjaC8kKFNSQ0FSQ0gpL2xpYi9ic3dhcHNkaTIu
UwogIyBUaGUgLmRhdGEgc2VjdGlvbiBpcyBhbHJlYWR5IGRpc2NhcmRlZCBieSB0aGUgbGlua2Vy
IHNjcmlwdCBzbyBubyBuZWVkCiAjIHRvIGJvdGhlciBhYm91dCBpdCBoZXJlLgogY2hlY2tfZm9y
X2JhZF9zeW1zID0gXAotYmFkX3N5bXM9JCQoJChDUk9TU19DT01QSUxFKW5tICRAIHwgc2VkIC1u
ICdzL14uXHs4XH0gW2JjXSBcKC4qXCkvXDEvcCcpICYmIFwKK2JhZF9zeW1zPSQkKCQoTk0pICRA
IHwgc2VkIC1uICdzL14uXHs4XH0gW2JjXSBcKC4qXCkvXDEvcCcpICYmIFwKIFsgLXogIiQkYmFk
X3N5bXMiIF0gfHwgXAogICAoIGVjaG8gImZvbGxvd2luZyBzeW1ib2xzIG11c3QgaGF2ZSBub24g
bG9jYWwvcHJpdmF0ZSBzY29wZToiID4mMjsgXAogICAgIGVjaG8gIiQkYmFkX3N5bXMiID4mMjsg
cm0gLWYgJEA7IGZhbHNlICkKLS0gCjIuMjguMC4xMDExLmdhNjQ3YTg5OTBmLWdvb2cKCg==
--00000000000048160d05b180e12d--
