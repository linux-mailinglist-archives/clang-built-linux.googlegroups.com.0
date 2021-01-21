Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQ6KUOAAMGQEPRS5SQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B682FDF3F
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 03:21:56 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id x189sf984002iof.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 18:21:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611195715; cv=pass;
        d=google.com; s=arc-20160816;
        b=g3426zb2rcPDCkPhApXnT1kP4uxuLCSPRVEczOpNeX5D5Gpj10f2aXs+5XgyqD2kbG
         zTxVtvw80mtSuoSr5YUxpvUheF2EUbbH3d9+H+dduTXoEzbjjQIl1mvZGhixtzTwwV08
         q/4zQRYWCziXRu3qm73QliA/HHk4okEpPvqJTlxLh4ShhRIeAdlbpA9S64+WGRGy158N
         eZjlARcOI7TdCjdr8NtbKCf0pQgMjEaByfbYKrZLt3m9Hq5LJ9msD818l+QVncveZLm9
         +Y3ll91LDddVjVGDkRwrmBHtTiAiJOI6vzLGZPU8DXCcYV19SXs7gcRLHa8oiBQw0tkg
         E3kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yTzvvjm88AeP1d3GnpqEUqfOFCBxbl3qvl6pQJ50+xQ=;
        b=oWAbDdd1/IuNj8oAyUVfIqXM0rT9THfkS2YaEQhs61KCx4utMdzx9/b0gj/MiI3xhK
         d1gAQuypDQ45/O2zXNf2xG+oHSHYAcP+YboEcjZ5I8IMs203tde9LQBMoh4AHEbqTw4t
         QJrtePoLscWtNf1yupACguwCB58ux32E/9QWJePlAqYj+cXVmovOx5uiwf3wFYlK0ewm
         cILmtp4nXIkownthyZduVtNjkCvmNhf41u62n6h50iiclHd1ZW4nxPImTf0Ek2jJuqi6
         6decQhnPhNXnqqQkDzxy+GjdnUp3u/OWXbklml3BKOG0hW+ilihgzb4CBjWLbhLAIenR
         NLIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fk76+8fp;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yTzvvjm88AeP1d3GnpqEUqfOFCBxbl3qvl6pQJ50+xQ=;
        b=cgmiolZ1HlbUHqXqFpEy8qHx7pnpkGRuCAcustAfJMBFo0IjTQyitLlaXQybwHpyWG
         II097vgEcfx8GvIRQUY/wCyxNLBykfoyraFiBUygAsUG1VjS9vSf2HzCmUD+cWcbQLZ1
         25dTrc5FT8KsKPNw+f2j2rSWsDzvgjCquHKSkntxzfoPdU1FFCfppgDWDaYUn5BcCcda
         iZ/4YRHym4kv4YbVpzUb1DSIYa8n34gpx5GOWuh923xR8tphgU3dY2o7Vpu2iMUpc06T
         VjwRL1Xqbsmz/KSXadMY4KDUo8Ztg57N41J6sra7CFv3OWgNaY3TUqZ/vN0MgVYiPBSf
         Dm4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yTzvvjm88AeP1d3GnpqEUqfOFCBxbl3qvl6pQJ50+xQ=;
        b=OrJa04V51L1dXKzJmmDz6dT3wDi2JW8WbqOfRG2j1dfvV2/PfH3Jjr8bOS3dQuuG83
         H0ZL/I/Rpm/8uz+4X0zzNwXdFWY13naO7HltduuGYh60/yJ554ZP+ZBUCjlVsmcrMw6s
         agH7tM7PU1G4fxsU6BESj2029cC3lmtaW2zx0OTOyoftoZy2bA/Cir3Nr8ycsJjiVQEk
         Wwj8Aj3I7crR8ZngNnK0biYdWOoDYJyayfk42X5/FCvKrTYJejvD/5cMB/EwlggrtcqB
         enrdx1Y4bLN1qkMdg8tYx155JAu44b5HybxUYD+Sj5BUj31hnbtWdKt5nIEye2zWRAoF
         g71A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yTzvvjm88AeP1d3GnpqEUqfOFCBxbl3qvl6pQJ50+xQ=;
        b=UiSza7bjZXOnjde6vtU0UcciA+96PhekiuPDv7VsRXZsGHyKos5moEpqYlVdfntyFF
         7btfcipEnCmW12uDygAQXpGh9A/nZIsF/byY8ty6uieCpf7KOp2cp/d53lyc6tDZNMZ7
         cBwSYGsRSsJQ0TkTCe9yHpvAeOMIUKN9SZ9+m4TQlkVL+pDjeX92LCHWhjUgw9707/10
         B0qeFvG2APlrDqR1wawIyTHuQY2FlCa8AXce6xJBjcjNWTGGS/tfT6dZAw7KuJ4QV4V1
         FzLpFKzzPX4dNDCW0g26KZOb09AfG2mPhG0eXkBlcBdjl+sYOj669sEGJprH3efzSEjS
         FU6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vAs69rqkAK41kwi/O6MFMw/Ml9RMqZ3w1i8NMhuOOWlnp6nJ4
	FF2M83XltnoLiTHEjv1Rv+g=
X-Google-Smtp-Source: ABdhPJztWYAy2br63Pan3AjdFBQU7gCqCRdzRP+rtopmwxm5EH1ETiyqdhKDUxUFtBvIBp2KUDoNUA==
X-Received: by 2002:a05:6e02:1787:: with SMTP id y7mr9875729ilu.233.1611195715475;
        Wed, 20 Jan 2021 18:21:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:12b0:: with SMTP id f16ls229950ilr.11.gmail; Wed,
 20 Jan 2021 18:21:55 -0800 (PST)
X-Received: by 2002:a05:6e02:20e5:: with SMTP id q5mr10059028ilv.131.1611195714984;
        Wed, 20 Jan 2021 18:21:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611195714; cv=none;
        d=google.com; s=arc-20160816;
        b=L2kGZLUgaDfdupktvSKtdCU3kKfip/IF7HT5UKWz7AVuv7W8QxMJd0ZAUTEwnsB0lT
         DCGpobRvHYqZzNDW48VrTywsla0bQVrnKcq+pVAT232xTy7JVeSrk5Y0EZXLoQp2LHwy
         msa+xjhCikNlY25/ih6BDZEFXHeYr2Aoih7PDgnKQfyUZRA/y1dyfHYO8wgoJsHsMAUn
         MLzwPhkBCnGaJKA2c5jkhpnWP6s1IONMNNUTpfb4fV0JgLm5L3H7a7yOmI6Dd1IeQo/6
         ujMLJJCS4NXh9qC8hYAPrhfHg15mPZ5iRgLWRXWlZiCUbcfbVXAMwtgGAMdjhquhFriR
         WJ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vp+AOE092k68RqEbMcBCp9/Ukm2GwYnsZJxTSLbTqcQ=;
        b=rWIUvf5M1mcfKkTEROC4Ce3N+gOJUyMrmJhApJUCU+u1TPxjMreiOMxOKPbLth8fHm
         iQ6GKUDhmmKQx3nokfXhEk1HkGxQEjau6pIsYSjOLEHQAoyeWhsbyY/hBT0Dml54ep0s
         ypI0v4yNGEovk+4JsPGTPnoXj+PzQlbvVqbhSNYaMn+MV8b0LLfg0CU51F93Ie/jjQd0
         JNI3zd9RZdLphG0ZGLp/2hkwvxchWwvq3AwSm1uF0pfUR2hluHVe4NneLVZUjB82YGRk
         2uzmj667JmtcWkdobeGflqpKuRnQX0IebWja8RWAmNs0hL/TGs7enNn4Z1S23ddjC4Yb
         JXRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fk76+8fp;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id d24si316051ioi.3.2021.01.20.18.21.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 18:21:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id y19so1147782iov.2
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 18:21:54 -0800 (PST)
X-Received: by 2002:a02:2ace:: with SMTP id w197mr10061595jaw.132.1611195714793;
 Wed, 20 Jan 2021 18:21:54 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com>
In-Reply-To: <20210111081821.3041587-1-morbo@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 21 Jan 2021 03:21:43 +0100
Message-ID: <CA+icZUW63tP7kzWCKofJH0E0xA7yLCYpSOYz_aw1D4mkhNhW=w@mail.gmail.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: multipart/mixed; boundary="0000000000003e955e05b95fbcbc"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fk76+8fp;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d
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

--0000000000003e955e05b95fbcbc
Content-Type: text/plain; charset="UTF-8"

Hi,

When I looked through the code I wondered why we do not add a
"CONFIG_PGO_CLANG_PROFDATA" which can be helpful when doing the PGO
rebuild with a vmlinux.profdata.

This introduces a "PGO_PROFDATA" to turn on/off to pass
"-fprofile-use=vmlinux.profdata" (see CFLAGS_PGO_CLANG_PROFDATA in
top-level Makefile).

If we turn off via "PGO_PROFILE := n" in several Makefiles - we should
do the same and add "PGO_PROFDATA := n" to the same Makefiles?

Please see the attached diff.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW63tP7kzWCKofJH0E0xA7yLCYpSOYz_aw1D4mkhNhW%3Dw%40mail.gmail.com.

--0000000000003e955e05b95fbcbc
Content-Type: text/x-patch; charset="US-ASCII"; name="CONFIG_PGO_CLANG_PROFDATA.diff"
Content-Disposition: attachment; filename="CONFIG_PGO_CLANG_PROFDATA.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_kk689dua0>
X-Attachment-Id: f_kk689dua0

ZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKaW5kZXggZGQ1OGZjYTY1YzlmLi5kOWE0
ODI3OWM0ZDUgMTAwNjQ0Ci0tLSBhL01ha2VmaWxlCisrKyBiL01ha2VmaWxlCkBAIC02NjAsNyAr
NjYwLDggQEAgZW5kaWYgIyBLQlVJTERfRVhUTU9ECiBhbGw6IHZtbGludXgKIAogQ0ZMQUdTX1BH
T19DTEFORyA6PSAtZnByb2ZpbGUtZ2VuZXJhdGUKLWV4cG9ydCBDRkxBR1NfUEdPX0NMQU5HCitD
RkxBR1NfUEdPX0NMQU5HX1BST0ZEQVRBIDo9IC1mcHJvZmlsZS11c2U9dm1saW51eC5wcm9mZGF0
YQorZXhwb3J0IENGTEFHU19QR09fQ0xBTkcgQ0ZMQUdTX1BHT19DTEFOR19QUk9GREFUQQogCiBD
RkxBR1NfR0NPVgk6PSAtZnByb2ZpbGUtYXJjcyAtZnRlc3QtY292ZXJhZ2UgXAogCSQoY2FsbCBj
Yy1vcHRpb24sLWZuby10cmVlLWxvb3AtaW0pIFwKZGlmZiAtLWdpdCBhL2FyY2gveDg2L2Jvb3Qv
TWFrZWZpbGUgYi9hcmNoL3g4Ni9ib290L01ha2VmaWxlCmluZGV4IDM4Mzg1M2UzMmY2Ny4uMzI2
OGQxZWU2ZTQ1IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9ib290L01ha2VmaWxlCisrKyBiL2FyY2gv
eDg2L2Jvb3QvTWFrZWZpbGUKQEAgLTcyLDYgKzcyLDcgQEAgS0JVSUxEX0NGTEFHUwkrPSAkKGNh
bGwgY2Mtb3B0aW9uLC1mbWFjcm8tcHJlZml4LW1hcD0kKHNyY3RyZWUpLz0pCiBLQlVJTERfQ0ZM
QUdTCSs9IC1mbm8tYXN5bmNocm9ub3VzLXVud2luZC10YWJsZXMKIEdDT1ZfUFJPRklMRSA6PSBu
CiBQR09fUFJPRklMRSA6PSBuCitQR09fUFJPRkRBVEEgOj0gbgogVUJTQU5fU0FOSVRJWkUgOj0g
bgogCiAkKG9iaikvYnpJbWFnZTogYXNmbGFncy15ICA6PSAkKFNWR0FfTU9ERSkKZGlmZiAtLWdp
dCBhL2FyY2gveDg2L2Jvb3QvY29tcHJlc3NlZC9NYWtlZmlsZSBiL2FyY2gveDg2L2Jvb3QvY29t
cHJlc3NlZC9NYWtlZmlsZQppbmRleCBlZDEyYWI2NWY2MDYuLjcwN2M0MDM0YWVmNyAxMDA2NDQK
LS0tIGEvYXJjaC94ODYvYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlCisrKyBiL2FyY2gveDg2L2Jv
b3QvY29tcHJlc3NlZC9NYWtlZmlsZQpAQCAtNTUsNiArNTUsNyBAQCBDRkxBR1Nfc2V2LWVzLm8g
Kz0gLUkkKG9ianRyZWUpL2FyY2gveDg2L2xpYi8KIEtCVUlMRF9BRkxBR1MgIDo9ICQoS0JVSUxE
X0NGTEFHUykgLURfX0FTU0VNQkxZX18KIEdDT1ZfUFJPRklMRSA6PSBuCiBQR09fUFJPRklMRSA6
PSBuCitQR09fUFJPRkRBVEEgOj0gbgogVUJTQU5fU0FOSVRJWkUgOj1uCiAKIEtCVUlMRF9MREZM
QUdTIDo9IC1tIGVsZl8kKFVUU19NQUNISU5FKQpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvY3J5cHRv
L01ha2VmaWxlIGIvYXJjaC94ODYvY3J5cHRvL01ha2VmaWxlCmluZGV4IGJhYTE0ZjgzZWRhZS4u
MWIyY2I5MTQyNjcyIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9jcnlwdG8vTWFrZWZpbGUKKysrIGIv
YXJjaC94ODYvY3J5cHRvL01ha2VmaWxlCkBAIC01LDYgKzUsNyBAQAogT0JKRUNUX0ZJTEVTX05P
Tl9TVEFOREFSRCA6PSB5CiAKIFBHT19QUk9GSUxFX2N1cnZlMjU1MTkteDg2XzY0Lm8gOj0gbgor
UEdPX1BST0ZEQVRBX2N1cnZlMjU1MTkteDg2XzY0Lm8gOj0gbgogCiBvYmotJChDT05GSUdfQ1JZ
UFRPX1RXT0ZJU0hfNTg2KSArPSB0d29maXNoLWk1ODYubwogdHdvZmlzaC1pNTg2LXkgOj0gdHdv
ZmlzaC1pNTg2LWFzbV8zMi5vIHR3b2Zpc2hfZ2x1ZS5vCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9l
bnRyeS92ZHNvL01ha2VmaWxlIGIvYXJjaC94ODYvZW50cnkvdmRzby9NYWtlZmlsZQppbmRleCBm
NzQyMWU0NDcyNWEuLjY3ODYwZWNkZTU0MiAxMDA2NDQKLS0tIGEvYXJjaC94ODYvZW50cnkvdmRz
by9NYWtlZmlsZQorKysgYi9hcmNoL3g4Ni9lbnRyeS92ZHNvL01ha2VmaWxlCkBAIC0xODEsNiAr
MTgxLDcgQEAgVkRTT19MREZMQUdTID0gLXNoYXJlZCAtLWhhc2gtc3R5bGU9Ym90aCAtLWJ1aWxk
LWlkPXNoYTEgXAogCSQoY2FsbCBsZC1vcHRpb24sIC0tZWgtZnJhbWUtaGRyKSAtQnN5bWJvbGlj
CiBHQ09WX1BST0ZJTEUgOj0gbgogUEdPX1BST0ZJTEUgOj0gbgorUEdPX1BST0ZEQVRBIDo9IG4K
IAogcXVpZXRfY21kX3Zkc29fYW5kX2NoZWNrID0gVkRTTyAgICAkQAogICAgICAgY21kX3Zkc29f
YW5kX2NoZWNrID0gJChjbWRfdmRzbyk7ICQoY21kX3Zkc29fY2hlY2spCmRpZmYgLS1naXQgYS9h
cmNoL3g4Ni9wbGF0Zm9ybS9lZmkvTWFrZWZpbGUgYi9hcmNoL3g4Ni9wbGF0Zm9ybS9lZmkvTWFr
ZWZpbGUKaW5kZXggNWYyMmIzMTQ0NmFkLi41ZDY0YjcyOGEwYTAgMTAwNjQ0Ci0tLSBhL2FyY2gv
eDg2L3BsYXRmb3JtL2VmaS9NYWtlZmlsZQorKysgYi9hcmNoL3g4Ni9wbGF0Zm9ybS9lZmkvTWFr
ZWZpbGUKQEAgLTMsNiArMyw3IEBAIE9CSkVDVF9GSUxFU19OT05fU1RBTkRBUkRfZWZpX3RodW5r
XyQoQklUUykubyA6PSB5CiBLQVNBTl9TQU5JVElaRSA6PSBuCiBHQ09WX1BST0ZJTEUgOj0gbgog
UEdPX1BST0ZJTEUgOj0gbgorUEdPX1BST0ZEQVRBIDo9IG4KIAogb2JqLSQoQ09ORklHX0VGSSkg
CQkrPSBxdWlya3MubyBlZmkubyBlZmlfJChCSVRTKS5vIGVmaV9zdHViXyQoQklUUykubwogb2Jq
LSQoQ09ORklHX0VGSV9NSVhFRCkJCSs9IGVmaV90aHVua18kKEJJVFMpLm8KZGlmZiAtLWdpdCBh
L2FyY2gveDg2L3B1cmdhdG9yeS9NYWtlZmlsZSBiL2FyY2gveDg2L3B1cmdhdG9yeS9NYWtlZmls
ZQppbmRleCAzNmYyMGU5OWRhMGIuLjk5ZjJlNGMxODg2ZSAxMDA2NDQKLS0tIGEvYXJjaC94ODYv
cHVyZ2F0b3J5L01ha2VmaWxlCisrKyBiL2FyY2gveDg2L3B1cmdhdG9yeS9NYWtlZmlsZQpAQCAt
MjQsNiArMjQsNyBAQCB0YXJnZXRzICs9IHB1cmdhdG9yeS5ybyBwdXJnYXRvcnkuY2hrCiAjIFNh
bml0aXplciwgZXRjLiBydW50aW1lcyBhcmUgdW5hdmFpbGFibGUgYW5kIGNhbm5vdCBiZSBsaW5r
ZWQgaGVyZS4KIEdDT1ZfUFJPRklMRQk6PSBuCiBQR09fUFJPRklMRQk6PSBuCitQR09fUFJPRkRB
VEEJOj0gbgogS0FTQU5fU0FOSVRJWkUJOj0gbgogVUJTQU5fU0FOSVRJWkUJOj0gbgogS0NTQU5f
U0FOSVRJWkUJOj0gbgpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvcmVhbG1vZGUvcm0vTWFrZWZpbGUg
Yi9hcmNoL3g4Ni9yZWFsbW9kZS9ybS9NYWtlZmlsZQppbmRleCAyMTc5NzE5MmY5NTguLmE0OTU4
OTBlOWIxMSAxMDA2NDQKLS0tIGEvYXJjaC94ODYvcmVhbG1vZGUvcm0vTWFrZWZpbGUKKysrIGIv
YXJjaC94ODYvcmVhbG1vZGUvcm0vTWFrZWZpbGUKQEAgLTc3LDQgKzc3LDUgQEAgS0JVSUxEX0FG
TEFHUwk6PSAkKEtCVUlMRF9DRkxBR1MpIC1EX19BU1NFTUJMWV9fCiBLQlVJTERfQ0ZMQUdTCSs9
IC1mbm8tYXN5bmNocm9ub3VzLXVud2luZC10YWJsZXMKIEdDT1ZfUFJPRklMRSA6PSBuCiBQR09f
UFJPRklMRSA6PSBuCitQR09fUFJPRkRBVEEgOj0gbgogVUJTQU5fU0FOSVRJWkUgOj0gbgpkaWZm
IC0tZ2l0IGEvYXJjaC94ODYvdW0vdmRzby9NYWtlZmlsZSBiL2FyY2gveDg2L3VtL3Zkc28vTWFr
ZWZpbGUKaW5kZXggNTRmNTc2OGY1ODUzLi4yZTljZGMxMzdhZGUgMTAwNjQ0Ci0tLSBhL2FyY2gv
eDg2L3VtL3Zkc28vTWFrZWZpbGUKKysrIGIvYXJjaC94ODYvdW0vdmRzby9NYWtlZmlsZQpAQCAt
NjUsNiArNjUsNyBAQCBxdWlldF9jbWRfdmRzbyA9IFZEU08gICAgJEAKIFZEU09fTERGTEFHUyA9
IC1mUElDIC1zaGFyZWQgLVdsLC0taGFzaC1zdHlsZT1zeXN2CiBHQ09WX1BST0ZJTEUgOj0gbgog
UEdPX1BST0ZJTEUgOj0gbgorUEdPX1BST0ZEQVRBIDo9IG4KIAogIwogIyBJbnN0YWxsIHRoZSB1
bnN0cmlwcGVkIGNvcHkgb2YgdmRzbyouc28gbGlzdGVkIGluICQodmRzby1pbnN0YWxsLXkpLgpk
aWZmIC0tZ2l0IGEva2VybmVsL3Bnby9LY29uZmlnIGIva2VybmVsL3Bnby9LY29uZmlnCmluZGV4
IDVmZTk2MzVhYzY0Yy4uY2UxZTFjMDYxYTk4IDEwMDY0NAotLS0gYS9rZXJuZWwvcGdvL0tjb25m
aWcKKysrIGIva2VybmVsL3Bnby9LY29uZmlnCkBAIC0zMiw0ICszMiw4IEBAIGNvbmZpZyBQR09f
Q0xBTkcKIAkgIE5vdGUgdGhhdCB0aGUgZGVidWdmcyBmaWxlc3lzdGVtIGhhcyB0byBiZSBtb3Vu
dGVkIHRvIGFjY2VzcwogCSAgcHJvZmlsaW5nIGRhdGEuCiAKK2NvbmZpZyBQR09fQ0xBTkdfUFJP
RkRBVEEKKwlib29sICJVc2Ugdm1saW51eC5wcm9mZGF0YSBwcm9maWxlIGZpbGUiCisJZGVwZW5k
cyBvbiAhUEdPX0NMQU5HCisKIGVuZG1lbnUKZGlmZiAtLWdpdCBhL3NjcmlwdHMvTWFrZWZpbGUu
bGliIGIvc2NyaXB0cy9NYWtlZmlsZS5saWIKaW5kZXggMTJmZWQ4MjVhYjRiLi4xNDE2OWE1NzVi
NjQgMTAwNjQ0Ci0tLSBhL3NjcmlwdHMvTWFrZWZpbGUubGliCisrKyBiL3NjcmlwdHMvTWFrZWZp
bGUubGliCkBAIC0xNTQsNiArMTU0LDEyIEBAIF9jX2ZsYWdzICs9ICQoaWYgJChwYXRzdWJzdCBu
JSwsIFwKIAkJJChQR09fUFJPRklMRV8kKGJhc2V0YXJnZXQpLm8pJChQR09fUFJPRklMRSl5KSwg
XAogCQkkKENGTEFHU19QR09fQ0xBTkcpKQogZW5kaWYKKyMgVXNlIHZtbGludXgucHJvZmRhdGEg
cHJvZmlsZSBmaWxlCitpZmVxICgkKENPTkZJR19QR09fQ0xBTkdfUFJPRkRBVEEpLHkpCitfY19m
bGFncyArPSAkKGlmICQocGF0c3Vic3QgbiUsLCBcCisJCSQoUEdPX1BST0ZEQVRBXyQoYmFzZXRh
cmdldCkubykkKFBHT19QUk9GREFUQSl5KSwgXAorCQkkKENGTEFHU19QR09fQ0xBTkdfUFJPRkRB
VEEpKQorZW5kaWYKIAogIwogIyBFbmFibGUgYWRkcmVzcyBzYW5pdGl6ZXIgZmxhZ3MgZm9yIGtl
cm5lbCBleGNlcHQgc29tZSBmaWxlcyBvciBkaXJlY3Rvcmllcwo=
--0000000000003e955e05b95fbcbc--
