Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBINU3WDQMGQEMXDYKXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6466D3D051A
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 01:20:02 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id h15-20020adffd4f0000b0290137e68ed637sf50037wrs.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 16:20:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626823202; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zduy04Y68HPZKgvEe/LCkq7sN3EsZrKhLJSi6exNgKOnsAONB8590qvYnUf7AWzmpE
         M0r2Q/aEbGUbn/naZSNQt7Ic4fcLnPGby686pDtNCvPqNhPWuqSacgAOw/UMgclGFs1D
         faQVXZuyKTL085q4lZ7BXJu2MDpyY+0OBY/yYJOVdXUXGtBfbXwyCKn73uTH5LHo7K00
         HorYXqTecyhN7sqDoYagppw1exXF2XTJJ+UlQqRdx0+7qXSerCo9n8JQjuDUgt+IDSSz
         6IRPSG2EFM13MXnueUKOeAgApFpGcD62j+D2EHZZFZFfG9W4HmhTX4JXcDTouxZ87gZg
         igDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4qqrj45eZQ429pppbIF7FneOieS/KaOgTTyEbI2vi6Y=;
        b=gB8N/0it9srxNtuhkYOVrLNc62NlrhzwE7CjY8403aKYtLGj5D+tygqrT8UDuMm7mt
         DP+IHBhwUldqRLYARObfMRVidZwCMZEuPDXHn0AZspiXVkp1eTCGz5oy0RfbzaQnW7nc
         f611ZTt8v8k86E6Jwkms8pJ3b5KOxveTvaabX1IVHEEtcRvpNm4Sbaj3lBdq4fNELjfh
         tXRHR8N9G0xyC0XTy0H4rWESqPECAJ8oAUcmjNStAVVgryBc5K+vU8xXbShXC3U8hMNB
         rtFaKr77gXQsPqwvZ3qdYa21uJLcj8gn0gU/wKHWLWgT2kMLHTZVwXaUqZ9D4B+IgRp2
         /LMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Eu7WdxuF;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4qqrj45eZQ429pppbIF7FneOieS/KaOgTTyEbI2vi6Y=;
        b=k8W4nty9osTlyRAQiNN30zdkJnOlqIeWakDBvP4MNlAxf0bfXhGskUHRHLhiX+5z83
         QmEHWyU0lXUOSsVfT8/DnU982NfvECcmxn/8gmkBGOoUlRIS7gGTa2YelJzomrMIKHgQ
         Cy8a9G9NkgwZHqLiPYE/KmutoZdW4azDcnEqbwNjz/KkmA7n42nHnwb2LhulAM3qs5Pb
         0qMk8H4SCrAVeGnzjkfugSSrSh4BTJFiuiyKv+MWaanoviBDsRHcxH0CxWahsi1uZFGC
         AuiNuD+PXwM5IsJGBi0GUt5wvzVb+fXWGCMY7WE4EFJNSFPGlyE5JXx6VTFA+29FjUjX
         r1lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4qqrj45eZQ429pppbIF7FneOieS/KaOgTTyEbI2vi6Y=;
        b=pWQoD1/swKZ2TRVe/7y9lrYKIGgu9XDsgMv9Wr28E1lovZCO9en3kgSONvIldlzNeJ
         QY34Lqc+NPVkJxafOLJkD9mUiBoyar0Q5eAYpaRS2HT9M7oEWIF4AyobtPahsTrKcskl
         XPZjulqby4y/OL6B0vrOu8xBnW4pS4ESWudMlNDCwnF3pXpH0dtCXWH5fL8Gb5YozqDv
         VTCOUNdSBbLAG1rA/3zvhpRvzBSLaSiSWL/TSUaNgP1sf+Jc6P8NVkT1dczNWtLV7j2e
         M3RAK82CBgHupf1frdqL4odel4TEY8xdp+MfKbkHr5RQN5hRBleVF0jbTKbUKNZlX9WS
         HCpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qHUIRm2xDBoo4HhHfx1KGO3afThEBJKQqwRuapSfV5JoxLMQw
	vMT1PmGLMTZD2/sBcGTUMVg=
X-Google-Smtp-Source: ABdhPJwJEotFUCmCDCTXoHRIgmRjF+tf+jZGFHM2fc9ZfPHtk4LtKrANHJndRvGenpNw2u/XqfHbPQ==
X-Received: by 2002:a5d:64c4:: with SMTP id f4mr39109602wri.21.1626823202116;
        Tue, 20 Jul 2021 16:20:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:198b:: with SMTP id t11ls118058wmq.2.gmail; Tue, 20
 Jul 2021 16:20:01 -0700 (PDT)
X-Received: by 2002:a05:600c:2298:: with SMTP id 24mr944984wmf.36.1626823201135;
        Tue, 20 Jul 2021 16:20:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626823201; cv=none;
        d=google.com; s=arc-20160816;
        b=PTX/IF659JyB6E3VnT38DOxQ/H9imKYzXY1/w3O+mRxQlRvCUe60F/WPjO5DXR1Yqt
         loq3o6SFfYbbwPspP1LjrrQ4sIpEy3itTAFNN/23MWoD0KPJSdSnRDyixbKflQQUfo+3
         NnKA0A9QI9sIrxhxH9FGNF6pmRDZNySLb5JFzZQ+EYG4C3qz7PYM65WuR8BkDovdC7Ux
         R0JXqGmh0dOdBmAj10gaO0FuDwyq16+IcD1rqPyjyVhX6jg+krNrzt3jdWpQfKHdC8+a
         yB4Ggzd1cYrATI96rQanEGZ5668U5KPNbsCPkvTPKcKQXXXO1eGHA88uJgpJfoZ7MZx1
         Fx1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OX3cTPlOHS78r64AuikOKLsMLcidG71A6iCd80GxJZs=;
        b=kufIqQWN0LLqo4Xs9h+xkg64KB3P53St5n3NrmeolJsaH9jDppk2ngW9Og0m45+/ZK
         Wdj5hAcMhpfPPV/E8UwCcrJR9QwO35niZT2/kgs4obmE/zOxOmPwHGvXoCAsut5NAFEn
         MzE/oRJS5gUKbNHfIqKWn9cVlyyw/IIXkzQJw5Du2F7m7MR4Hkru6wBO9HS+An536e8V
         wz2VhpPIqk5Y137JyY6ce1aDWe+Pkgr5GxRliYQH6ODlP9BcPioo6nu7pMBKfcyupqPZ
         n4VBfFxw70rh13raW7APH8BTNM8gi4W0pMCESN1uHOzutbp9ZwR8nOrCsh/wsC5Ew8tT
         N6uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Eu7WdxuF;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id 185si145720wma.1.2021.07.20.16.20.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 16:20:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id i5so464491lfe.2
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 16:20:01 -0700 (PDT)
X-Received: by 2002:ac2:4890:: with SMTP id x16mr23728892lfc.15.1626823200306;
        Tue, 20 Jul 2021 16:20:00 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com. [209.85.208.171])
        by smtp.gmail.com with ESMTPSA id v130sm1625512lfa.284.2021.07.20.16.19.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 16:19:59 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id d17so505229ljq.12
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 16:19:59 -0700 (PDT)
X-Received: by 2002:a2e:84c7:: with SMTP id q7mr28166096ljh.61.1626823198993;
 Tue, 20 Jul 2021 16:19:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAKwvOdkvju7heeNpk87brsjkhXHbdKFsUgf63KWhXox9rDkQsA@mail.gmail.com> <CAHk-=wiZe2FuiAOwhbKR_VMmFBKekz0NFREm4fvik25PEdcK_g@mail.gmail.com>
In-Reply-To: <CAHk-=wiZe2FuiAOwhbKR_VMmFBKekz0NFREm4fvik25PEdcK_g@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 20 Jul 2021 16:19:42 -0700
X-Gmail-Original-Message-ID: <CAHk-=whS1zBU=uhDTk2M1LwkqG7AKLsR0_+XG+saY_s2FHZr-A@mail.gmail.com>
Message-ID: <CAHk-=whS1zBU=uhDTk2M1LwkqG7AKLsR0_+XG+saY_s2FHZr-A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: multipart/mixed; boundary="000000000000e3b1e305c7964a88"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=Eu7WdxuF;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

--000000000000e3b1e305c7964a88
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 20, 2021 at 2:54 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> But there are other things that stick around. In particular, I have
> considered simply using git config variables for that.
>
> Something like this in the main Makefile:

A slightly more fleshed-out patch to do this just to see if somebody
wants to work on something like this.

It really would seem to make it very easy to set up any random build
environment, and not have to remember it once it's done.

There are probably better ways to do this, I normally try to avoid
doing Makefile magic, since others have taken it over. Masahiro?

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhS1zBU%3DuhDTk2M1LwkqG7AKLsR0_%2BXG%2BsaY_s2FHZr-A%40mail.gmail.com.

--000000000000e3b1e305c7964a88
Content-Type: application/x-patch; name="patch.diff"
Content-Disposition: attachment; filename="patch.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_krcogziu0>
X-Attachment-Id: f_krcogziu0

IE1ha2VmaWxlIHwgNTAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9NYWtlZmlsZSBiL01ha2VmaWxlCmluZGV4IGU0ZjU4OTViYWRiNS4u
MjIxZWIyMDViNDc1IDEwMDY0NAotLS0gYS9NYWtlZmlsZQorKysgYi9NYWtlZmlsZQpAQCAtNDM2
LDI3ICs0MzYsMzkgQEAgS0JVSUxEX0hPU1RDWFhGTEFHUyA6PSAtV2FsbCAtTzIgJChIT1NUX0xG
U19DRkxBR1MpICQoSE9TVENYWEZMQUdTKQogS0JVSUxEX0hPU1RMREZMQUdTICA6PSAkKEhPU1Rf
TEZTX0xERkxBR1MpICQoSE9TVExERkxBR1MpCiBLQlVJTERfSE9TVExETElCUyAgIDo9ICQoSE9T
VF9MRlNfTElCUykgJChIT1NUTERMSUJTKQogCi0jIE1ha2UgdmFyaWFibGVzIChDQywgZXRjLi4u
KQotQ1BQCQk9ICQoQ0MpIC1FCisjIGRlZmF1bHQgYnVpbGQgZW52aXJvbm1lbnQgKCdnaXQgY29u
ZmlnJyBjYW4gb3ZlcnJpZGUpCiBpZm5lcSAoJChMTFZNKSwpCi1DQwkJPSBjbGFuZwotTEQJCT0g
bGQubGxkCi1BUgkJPSBsbHZtLWFyCi1OTQkJPSBsbHZtLW5tCi1PQkpDT1BZCQk9IGxsdm0tb2Jq
Y29weQotT0JKRFVNUAkJPSBsbHZtLW9iamR1bXAKLVJFQURFTEYJCT0gbGx2bS1yZWFkZWxmCi1T
VFJJUAkJPSBsbHZtLXN0cmlwCitERUZfQ0MJCT0gY2xhbmcKK0RFRl9MRAkJPSBsZC5sbGQKK0RF
Rl9BUgkJPSBsbHZtLWFyCitERUZfTk0JCT0gbGx2bS1ubQorREVGX09CSkNPUFkJPSBsbHZtLW9i
amNvcHkKK0RFRl9PQkpEVU1QCT0gbGx2bS1vYmpkdW1wCitERUZfUkVBREVMRgk9IGxsdm0tcmVh
ZGVsZgorREVGX1NUUklQCT0gbGx2bS1zdHJpcAogZWxzZQotQ0MJCT0gJChDUk9TU19DT01QSUxF
KWdjYwotTEQJCT0gJChDUk9TU19DT01QSUxFKWxkCi1BUgkJPSAkKENST1NTX0NPTVBJTEUpYXIK
LU5NCQk9ICQoQ1JPU1NfQ09NUElMRSlubQotT0JKQ09QWQkJPSAkKENST1NTX0NPTVBJTEUpb2Jq
Y29weQotT0JKRFVNUAkJPSAkKENST1NTX0NPTVBJTEUpb2JqZHVtcAotUkVBREVMRgkJPSAkKENS
T1NTX0NPTVBJTEUpcmVhZGVsZgotU1RSSVAJCT0gJChDUk9TU19DT01QSUxFKXN0cmlwCi1lbmRp
ZgorREVGX0NDCQk9ICQoQ1JPU1NfQ09NUElMRSlnY2MKK0RFRl9MRAkJPSAkKENST1NTX0NPTVBJ
TEUpbGQKK0RFRl9BUgkJPSAkKENST1NTX0NPTVBJTEUpYXIKK0RFRl9OTQkJPSAkKENST1NTX0NP
TVBJTEUpbm0KK0RFRl9PQkpDT1BZCT0gJChDUk9TU19DT01QSUxFKW9iamNvcHkKK0RFRl9PQkpE
VU1QCT0gJChDUk9TU19DT01QSUxFKW9iamR1bXAKK0RFRl9SRUFERUxGCT0gJChDUk9TU19DT01Q
SUxFKXJlYWRlbGYKK0RFRl9TVFJJUAk9ICQoQ1JPU1NfQ09NUElMRSlzdHJpcAorZW5kaWYKKwor
YnVpbGQtb3B0aW9uID0gJChzaGVsbCBnaXQgY29uZmlnIC0tZGVmYXVsdCAiJCgyKSIgLS1nZXQg
JCgxKSB8fCBlY2hvICIkKDIpIikKK0NDCQk9ICQoY2FsbCBidWlsZC1vcHRpb24sYnVpbGQuY2Ms
JChERUZfQ0MpKQorTEQJCT0gJChjYWxsIGJ1aWxkLW9wdGlvbixidWlsZC5sZCwkKERFRl9MRCkp
CitBUgkJPSAkKGNhbGwgYnVpbGQtb3B0aW9uLGJ1aWxkLmFyLCQoREVGX0FSKSkKK05NCQk9ICQo
Y2FsbCBidWlsZC1vcHRpb24sYnVpbGQubm0sJChERUZfTk0pKQorT0JKQ09QWQkJPSAkKGNhbGwg
YnVpbGQtb3B0aW9uLGJ1aWxkLm9iamNvcHksJChERUZfT0JKQ09QWSkpCitPQkpEVU1QCQk9ICQo
Y2FsbCBidWlsZC1vcHRpb24sYnVpbGQub2JqZHVtcCwkKERFRl9PQkpEVU1QKSkKK1JFQURFTEYJ
CT0gJChjYWxsIGJ1aWxkLW9wdGlvbixidWlsZC5yZWFkZWxmLCQoREVGX1JFQURFTEYpKQorU1RS
SVAJCT0gJChjYWxsIGJ1aWxkLW9wdGlvbixidWlsZC5zdHJpcCwkKERFRl9TVFJJUCkpCisKKyMg
TWFrZSB2YXJpYWJsZXMgKENDLCBldGMuLi4pCitDUFAJCT0gJChDQykgLUUKIFBBSE9MRQkJPSBw
YWhvbGUKIFJFU09MVkVfQlRGSURTCT0gJChvYmp0cmVlKS90b29scy9icGYvcmVzb2x2ZV9idGZp
ZHMvcmVzb2x2ZV9idGZpZHMKIExFWAkJPSBmbGV4Cg==
--000000000000e3b1e305c7964a88--
