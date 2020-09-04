Return-Path: <clang-built-linux+bncBDRZHGH43YJRBR5HY75AKGQE2CINSLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0070425D0F4
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 07:42:32 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id j7sf275287wro.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 22:42:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599198151; cv=pass;
        d=google.com; s=arc-20160816;
        b=W3xnAxZ9IS8B99G3V/DF9MXZE0GYL7oABsmQnr+QOue/CAMvt56h7+pSZxLSk+pQ9s
         rGvU1XtKw/63YbQTVmfl9RKgqDnmZyYYsV8miFlY8ij9XbbEhzKBOOwghOBKcZ81hZZV
         oJS8KPV3GUBlhqkarork4NhG4LkQblrc6IJtx9kot+I62PvOiMwKquDeiP44WcGI9etj
         ippmhScNT0IQpxarSvCz10ZyzdVLEJtptqCI5OdApThYfbvFLA0T8c/kkQt63pPhYGZi
         r6euE+7u80bsl8Umyk7sTwGecXhbwoeQ39cPtA8kWCgDVBGP/UTIGOdHA+FbPyNdCfbq
         kl3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SveHWuxcb4TQS1ePVMo944LaSK1mUuyNl8NWymVUEcM=;
        b=YCqi1EcePbVoGBCNzytBrr6XCKgR/DbEHNZx+A+Cp6OyqZ2dZhxIOesWg22+fP4RxC
         2VCDiSKeX7hT9przXTh6zgJ7EM+pssXzh/umLxyvmtG8TvQzNFBni8dNvjbIlbDRaaY1
         okcKIPC7kmI4vplsvaJAnIdOgZJ38KggIK43mryiihdkJcE3GnH+JPh5hZf1zjgy2GhO
         Xdlw4JMqeB007GYK4+lErUSazz0UtHe0ycfJ8aSgujgfvR8gQogzGvCEZXWhAPnz+nIl
         3P8S8E6biV6Z8nm1ZLu8x4whdBG+oRcw5Brw4sN1MtNmnqhub70F/pNXVxDcD14vF5Fe
         h+HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qT/uDgXW";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SveHWuxcb4TQS1ePVMo944LaSK1mUuyNl8NWymVUEcM=;
        b=EsogA+R/p01VbRTSbv7F+tKRi7WSXZtBzK1xXRi2VJetlX8OVlZcqt2uHMOqhCk+3E
         u0OMBe2j5PWJK2lJVMT1gRGO+e+hQA2qsY1QmH9io/8RP6NYepSt1TiFr3YWTaYXPGLz
         +Z8E49BSEDkK0zqX3Yc4s3FFLizZ6ikSCwVn5H4JsSYG1LHsx/AWv9FC+KqYNOj/Zm9G
         pnpijwmUgIdbW0d2L9nfSIWOonO0d1g3J5plpjBpIXFSpNTl28ur/KmlRgM4vrpx0Rrj
         g5lS/5q2tSDNLFihzcZsC5P55aVLN/UVCklWiI2lguqk5JR86szk5zFUFeuzLNWMwY54
         Opug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SveHWuxcb4TQS1ePVMo944LaSK1mUuyNl8NWymVUEcM=;
        b=dK/C+FiIAElOnpmMLqtBlIm/cBucfgmSYkZ3oSAD3C/hd8xHeC4ZXMBEH+sUQ7tl1k
         pI5yrh7tqDJHKYXW/uig9M+B+8xKPSoxs3DxMa72w/GtuudTx4qZv8CnCtFTBFjzmgaJ
         ssa97tE14PdUGKuRpBSs5YH+i963zU6YN7HSmhUssX9xv8zcJcsWTioOVMBJxatCENH0
         SijvZ1aPCWnazRcUQBBtr3WASbZEsNhY1B6yZsFZ842oHMabyFJI6kDOVwvHZW/AspQs
         EzrvgolpcOz4fpN4kGaK0KP4pVazLte//CC1No+Od7cT+c2yESqVbsljp5UGRlKjOfju
         NErw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SveHWuxcb4TQS1ePVMo944LaSK1mUuyNl8NWymVUEcM=;
        b=abDWKC6CAPvV7y1o7FpRbqTIR+7OZ+uNUNHnWxlEQy7Qa06WJGXCa2f4j6SkrfC+ot
         e+HPJGTQ2wU2zLOJbVJCJLtlob9NN6m2cqBsn14+No069xOj5KYn76aYklV41TJ9yiZZ
         84rSO+tvAlSKsu48Y1mkPt2fSxzQHJSgeHDvWWJQA+8DFJfb1HWi6qTCQJDdplZwiCIS
         Q2SmmkgpPBdpxvPsbiu0CQypUNK7XGAPJ5kbbwsid5nsTgJpP15ynfGo7gSmxDn+p2Om
         NmZT8TKT/kFlpz9BGpPvFpq43y8s6tyO3rvch6oT06urmHwrRgssfV2nbtotEYac9/2p
         YGJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/VC/ZdIeb8rprz84TJITpbKlwE/f6jNHgQ3E/6PlgmhAJIAum
	7f0jG0sPUag5YO/I4q/d9rA=
X-Google-Smtp-Source: ABdhPJypS7v0DW6g0TyCCxtgjfVlE+pjk3dqxw4LZgj3T1k36R/ISaaBzeNWRhOIMxPSN7kPgCZKcw==
X-Received: by 2002:adf:9c87:: with SMTP id d7mr6154260wre.41.1599198151675;
        Thu, 03 Sep 2020 22:42:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd0a:: with SMTP id a10ls9222220wrm.2.gmail; Thu, 03 Sep
 2020 22:42:31 -0700 (PDT)
X-Received: by 2002:a05:6000:12c3:: with SMTP id l3mr6189412wrx.164.1599198150953;
        Thu, 03 Sep 2020 22:42:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599198150; cv=none;
        d=google.com; s=arc-20160816;
        b=ds5f5BgfQQgkctRPsI4Xb2dag3yixk1UXpw9YRedTFpkVufmXgvghQaQYtbjQfBTms
         XlpnxHAfN+MdoJt8DkGCZeL/OIcSJtdS9xsQmdu4hakZ2Iutz0VNdwpt27mlOPLFONf9
         gHJJwujdBbA2DX895BIqsT34tJts1/4HIJpJQOYNlYViypz8wkBHDZTDqiuL7+SZwoG7
         Uk5YZoYwbmMmBP0BEZkdhZn31vvisbRNGWF96eTfeI+I5qEIfNBRBCKIhJLHCIR2kWaf
         t4MzZKiqwWUA7zm4XBz0dIAd1UDtvQ77lpaGvnW9urTu6M1H+gfqf9EX9QTdOL3w9EoA
         9DTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xWE10/K9CdFjBv2+wzy4YEN9T1BSrnV8vM6ktgt0toM=;
        b=zvjbDMNgsz18dO388eaUgPG31/LVbgLEOlEtQSbiMfOIa6WyyYhc/f5mKeu5FZw13s
         diycUuonOX7A5+4cxVcobdUdjnYehcZmbJl7KvOmS2Im0KNxMRjaSiUnyriLu8+QhOd8
         0d2ZqGAWq5vzZYNgRIwzpB88FEskFJqGeQCndcYIXuR/prGDTORGT2k+XKFDdal4A4Dp
         fJpQyTCnS80Rq9qsQyk02j4mQ79MyutnpOpbIifM4IvMJBf7xbaA93YN00QJSbguqVIt
         0Lh2rHQLZX/O6mBLYEjEtTlVGIJLtbsrbZJlPzG1+zSAMMzXGRkIAXMYhCnEUno/HtZE
         P+MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qT/uDgXW";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id i11si214156wra.3.2020.09.03.22.42.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 22:42:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id y17so3196283lfa.8
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 22:42:30 -0700 (PDT)
X-Received: by 2002:ac2:44b7:: with SMTP id c23mr3019396lfm.128.1599198150454;
 Thu, 03 Sep 2020 22:42:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <CA+icZUXCLyGmYCnHSBJ+8s5QdbPRr+fsfpW43M7pYFEDFOOdJA@mail.gmail.com> <20200903172847.GA1928336@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200903172847.GA1928336@ubuntu-n2-xlarge-x86>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 4 Sep 2020 07:42:19 +0200
Message-ID: <CANiq72nmm=pcaL1Vn+G3v3+Q8M=EcRNvvsFM9TG5soCpWzJ9sg@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] set clang minimum version to 10.0.1
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="qT/uDgXW";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Sep 3, 2020 at 7:28 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> I would say this should go through either Andrew or Masahiro. We do not
> have a formal git tree plus I believe there are other things that need
> to happen before we can push stuff to Linus.

Note that a git.kernel.org repo/account isn't required to send PRs.
The hard requirement is getting your keys signed. Putting stuff into
-next is also important.

> Given that this is not a regression or a bug fix, it should go into 5.10
> in my opinion.

It is a bit late, yeah.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nmm%3DpcaL1Vn%2BG3v3%2BQ8M%3DEcRNvvsFM9TG5soCpWzJ9sg%40mail.gmail.com.
