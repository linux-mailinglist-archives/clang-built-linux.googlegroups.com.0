Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU7HQX3QKGQESV6LGTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E17C1F5EF6
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 01:59:17 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id s7sf2590827plp.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 16:59:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591833556; cv=pass;
        d=google.com; s=arc-20160816;
        b=T6WC0/loz/dawkdLnExtSvyeGeeoWB6amkwDC4Hub05Z3+tDnHcglScDivEv6FIix8
         0hf8Y6pgTvp9K6cukLtWs+oZ7QdYftAXd+f9pmynmspe64r6prpEIg5EZBugYxktKlUM
         8Q9v/XIocTf1WLAZpuVSXAjhNinVtHO+5qZ+bdEoXyDBTXkEi0bI2TjhlJSsxOlbb7PM
         5Z4YgaigqKIcKDlHFgU8fJYFyVaP2PYzOGES4R4NtCSKNsMWCci/bptPXURApMAtDwHG
         vAxbfRCUmuxYNNgzpw4gk5xVypVu1vizU68arm7gycXB2nyHkBPxR2kj/L1BNPVhsa+/
         qt3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FRLMgQXufhrVFh3i32KzYFINRep1g81lPX8dwO3jG+4=;
        b=A81GTQE6Ved6qOPA5SYKz3S7LYoxH2cuurTjyuA1ME+kw+Fdz138KVe/E31oLYMx+T
         SQhIr1SIPlb68dpfqw8D8fJI929fRp0V3aoIO8ZEZ0k71OBbExrLQA58ETjrrIFFUTFK
         hi3gIJzYQWDHtm8ZqTni9bLyW6kZxqd2AJG4TbWAPIlYR+ofJO7voTJ6riwFSPrXaB0h
         1NNJQJd8qfAQooQCAtthM2rJoGawHSG8T14AdufRMZvAom1a4jsvJdE9qhdOTCLwYAOS
         uUzBqYMu4zxPQkNNAywl1J8QHNVKoN9qjIZQNUs8sz5lOJAdho1KHea1GtSDmd4tC4Ku
         lb2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q2hiuBNl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FRLMgQXufhrVFh3i32KzYFINRep1g81lPX8dwO3jG+4=;
        b=PDur6R0wU1bPQiQrAjrBT9xXPI2TLMcxhVa15P3qmn0ow3jpk13VVdrQU3d+N1fc3w
         9o4l6XIxkOnu5odGVlkVxC/yduFa7Z6unyM2gHrSy7HIOnPef5r2Ob91T3pGF38RDGFp
         rIKQGvEa539umXstHMN36EObXuiepKjoexoawb9EJOEQA2dG8U0KYh504Z7R0WnXJ1d3
         cLTCNwyIgNoCfXHgP1ZoAGcrNn0lBXPlofzdxM1Q7PS81GSdmTneSWdKXJp9QEn/7iTo
         qHhaB256PqXlY3uWsBHAfyg93lQIc9vCUp4HEP613mTuKtoNMKZNeMrS8C550yyrFeWM
         seHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FRLMgQXufhrVFh3i32KzYFINRep1g81lPX8dwO3jG+4=;
        b=V6HW5R5Pxc6fpqqjedz0h4iCHebF5ozjokKI4pbAYnfnHJgyyPmf3WYQHYOYEBNo5u
         MfgtPZQnSQ5WsbTocYP6NU+Y2aPQub1EXDITk+QqrSLWlGfdTOBSwaowGBEAoyK0oCO0
         e/nawQxGul5O03BS16XHzo9MPdr8oaENcXa8MFD18cRTO9BZVBa3AmpVQ/XiTOCa4xF3
         raQTJdeMIKTHe0qNsV35NaJItTYSYHWfp/AOdjvGKy2tO1Lrf3Wid6Cc8+i1Q3kqCnHD
         GSLjwcL5gPNabjsY7H0J8UEwEmh6K4cAIL7s5pmpKowpQcy3Pjybssdu70h8H+h0rRyG
         3EkA==
X-Gm-Message-State: AOAM530RVM0f+72pYsHOrgUlQP2HQBMSRUWS0uvjBQ9+OGu9LkvUzPQ6
	VpkmazN0kUUKBaYecBJUhJo=
X-Google-Smtp-Source: ABdhPJyuJjlXgWzWQnx5u3mVjPkcVDqWtdb+ys176ZD4yjSLM/0Ns0QVDdHIe1pYBDxjzcI7paHDOA==
X-Received: by 2002:a17:90a:8c96:: with SMTP id b22mr5702810pjo.88.1591833555939;
        Wed, 10 Jun 2020 16:59:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c70d:: with SMTP id o13ls148080pjt.0.gmail; Wed, 10
 Jun 2020 16:59:15 -0700 (PDT)
X-Received: by 2002:a17:90a:f694:: with SMTP id cl20mr5580732pjb.141.1591833555430;
        Wed, 10 Jun 2020 16:59:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591833555; cv=none;
        d=google.com; s=arc-20160816;
        b=b3/Tz5p0hOdccpxNfoJVI74bCGNrSIGDucGM+pOhXqGmEM+R0xAV5SVeeiEYCSN/Ji
         P3dncrJszmSLkWcz5vB8wnJwz7zQC7P6A26XsPjE+PKKJKi+1TpfZ087LpKuLg2OuWek
         Oterae2CfhcVrHIIxurepG3WGzcJBjxSA0VgIHns6M921vl84iEqeyTSbksgmPDN+COl
         CWnqZMDjfZU//kCDA8YI8OJD5SWIJhdng8xYR/csK8E32B33aTZSEziR/VXOeT5cSjA4
         fP24EPlXdOuWoqm3EGtTR5KbXIfqTTlhOpEQC8mn8S22tRxKt92Ejq23i+qKEvCyYhWK
         B5MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4edtY8Eu1VUmzgyb4H4wtL7jgrBQx9lKt9GvBevXky0=;
        b=XNu0fWNLYn/K7eBtDETx7NW8ShIug2lrSa8EXe30XaMLf18Lze36gF5a01kd77yAH4
         H43D4pHADF4quhroaz38EOGfRMGMNLf5WJqN+XSAdXYbhp+C4DvLgW8CO/o/cpLd1QZ7
         e0AwWN/FwOxs4cxJwqRi30sPukIiY2J3iAUA+Ljeb9mr7e3xFJfVmCasa/B+IDH5F9/Z
         CdjBX9doFEBFSHq5BPRjGgBQJtZtSkop5Vuyld8DhqmZVN8Rwx8cS4olQSJv/tiibhwj
         U5/J5Hj1GjL75GuDVUzf8yzMSbUGmSEbwM6cbr1OxAuYIOz4BMB+60x8LbmmMz/WvsuN
         RS3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q2hiuBNl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id q194si141539pfq.4.2020.06.10.16.59.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 16:59:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t7so1608492plr.0
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 16:59:15 -0700 (PDT)
X-Received: by 2002:a17:902:fe8b:: with SMTP id x11mr4939244plm.179.1591833554874;
 Wed, 10 Jun 2020 16:59:14 -0700 (PDT)
MIME-Version: 1.0
References: <CA+SOCL+ntBRGoA2qttMo=bt_VVKJMm8GEq+bfEoVvgq-j-Y1KA@mail.gmail.com>
In-Reply-To: <CA+SOCL+ntBRGoA2qttMo=bt_VVKJMm8GEq+bfEoVvgq-j-Y1KA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Jun 2020 16:59:03 -0700
Message-ID: <CAKwvOdnC_fKbVLB=q=BZt8gk9arPhEar4c_6ab9KUhfW1V3=Hg@mail.gmail.com>
Subject: Re: Cherry pick 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b
To: Jian Cai <jiancai@google.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Luis Lozano <llozano@google.com>, 
	Manoj Gupta <manojgupta@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q2hiuBNl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Wed, Jun 10, 2020 at 1:42 PM Jian Cai <jiancai@google.com> wrote:
>
> Hello,
>
> @Nick Desaulniers  made a patch (51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b=
) and it was accepted to mainline as part of ClangBuiltLinux project to mak=
e the kernel compatible with Clang's integrated assembler. Please consider =
cherry picking it back to 5.4 so that we can use Clang's integrated assembl=
er to assemble ChromeOS' Linux kernels.

This would be helpful for us in Android, too.  Seems like CrOS might
beat us to the punch in enabling LLVM_IAS=3D1.  I'm looking to do so for
Android later this year after Android 11 ships, depending on whether
5.4 is a supported kernel (I suppose so, not sure of the plans in
relation to mainline).

>
>
> commit 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b
> Author: Nick Desaulniers <ndesaulniers@google.com>
> Date:   Thu Jun 4 16:50:49 2020 -0700
>
>     elfnote: mark all .note sections SHF_ALLOC
>
>
> Thanks,
> Jian
>
>
>
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnC_fKbVLB%3Dq%3DBZt8gk9arPhEar4c_6ab9KUhfW1V3%3DHg=
%40mail.gmail.com.
