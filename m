Return-Path: <clang-built-linux+bncBDRZHGH43YJRBN7EQTVQKGQENCTEHSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id D43669BDC0
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Aug 2019 14:48:55 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id y24sf1791552lfh.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Aug 2019 05:48:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566650935; cv=pass;
        d=google.com; s=arc-20160816;
        b=V1cDx2YV36K6drfSasJ9pT55Vr5/ExLeT2f8gnstBzUSxjWhs4nt4YIJ1VysbMqps5
         G/CYJonEoMy2ZWhfhq1RGBSUd1OOBLMF39Gc1waIwNvS1iZQuu7uHB1TqQPTBMS6HsOm
         NMjqdhnsbNhdCrMTUZk3heW8L85S0grQgdTAJ0MLUCvyiEcqSxJLGKilfS8v5w8D83Bi
         FJi9gf3jh730H1UYpHZCqOZcEcQUa4sA+TEMCM7DzZdffb6ml9gjreyNaBBWKHTsoXH5
         mQOFS/ef9iUSeA/UR3ylVVYJUVo1vDydMPp/NvdR8byBJSVpEbd/Ob1/h26AM/xATx87
         tSEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=JOBKXqji55H8W+tuEYdx2P5D6xbYkQXQ6S3+HxqWDUg=;
        b=LYOm+ML6DvQRH/Zu5sYtnkqCNrmWKNDMNJh/TRJhmPPbewkiP31Mi7PlWXlYpS1/4R
         wr+j51KKIeFSWPW8Z7kZEogExmSnSxHIg/USjX6tcS4bIHKa42rcBUwZwlxVra/Rwxig
         E/O3Ww3w1isNjyA3Fu7SpZnNRaRzhcxzM9XFHbQPvu5S39ljQfur3DfnQhWM6R8SJDxI
         1X7eO11WRM+RRNC7plf9FeYCIpkJ+U/rzBoQkYyxTrYamtEj2JHP7EuU+0zYpEgxhRca
         S9xIQA4fnQ2XT0pnKMEh8NCNnaX9eE8I/A5TTajaS8qSB2w5TVxancRDX1vXC0VCpZ2S
         xk4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vFr+uyBD;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JOBKXqji55H8W+tuEYdx2P5D6xbYkQXQ6S3+HxqWDUg=;
        b=Ex25XebjVFXCz2EPMaO7nlbLpbeFp8WluDE33G5FY/WZ7L/psyXnRJEVPcCpISvCJA
         KeIIh8jA9YW+AFhw6gj5NkH5wLyhNRakoepIqu/UASSYKDguQW/a+qse5zXwIl7TyO/n
         F9Dk6Rtm0uMCmT6lPeeRGQvonT6izAEIQTgo4NcUhHBQfvpwv5Hesq3R3YZMWzmir8Iu
         P21CFRswFAXJn+Q976Xflqwh4PO+QlwMtKF0QrpdYaRrvKBIFOVlb0mdb02M23sXpZBt
         mwR49wY2CTElJa5KWGOfe6/UOi3CUyVFIMBgQB8uZn2cvBN7M6hZ8PB8i72ri6ZUksrw
         pa1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JOBKXqji55H8W+tuEYdx2P5D6xbYkQXQ6S3+HxqWDUg=;
        b=RlVSooQMx//PXmvFBiSCf6eVzW7G9Tov5LwgRcSURn+/DySP3pm4Zv/1Ev8Iqk3uCn
         0XkxtILHKyTp8+gyT/kceQPvJvyJmo8RJB237BnCYvWmm+CBDszLRSQJHhV602gNUoq8
         Cx38QDizpa6lh8d9L74EliDZgBag7KcOfx9SbsDFjMibqT0e25mlODeVrheut0ZDGvbX
         AimvajLpVaJQ8iMcLrO8VMDiMpNY30zHP971eTyxDvp874UMMUgSjXCVflhZzHqgmJvu
         1EXKMOxubqeudfDfqFl20RMAf1lD0V92SitC0gx3c+DsqWZA3cNqv34PtOcMHQpNV5xZ
         0IOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JOBKXqji55H8W+tuEYdx2P5D6xbYkQXQ6S3+HxqWDUg=;
        b=jeCzFRV/nzdnMlJesPEJrDywRS6Dy8M3tLfsYY5EXSXNdX11HSKLy3UqoDD8d/SPUG
         frRrkbTlLFufNPIw4P9zZxy6HCxfRHcHgkQX9CMG50bwv1K/0xdATycUxqBTD9MVgTSB
         k2Ally8K1UT1BTeLiFItes214SyI3fU19F8sgDcyRwoJRMS1i8jTc/7Mcfpwm9LZPVjK
         mkPEJY59GXUIplZEUjZbC1OydF+MaGeHljxm6uZWX3baUpNJFsPXu1XteVSYoJBSViKw
         CnsQpg4TqA1kUL3cfdONf1EsuyagttRKyph8/m9yNCCV+ADHLs6JlgF/svYRpx2VhklY
         +d6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUnn6ZYdcAR4paD47kMmWYzE4eQ/qOuxHjPDSXet+jbRlSPfzbp
	YSB61d1+/t0Pej6qB2Zx+5c=
X-Google-Smtp-Source: APXvYqzKEjrprlSI7NyoZPzlAz5yxJEtoTQvAAGrrJmJYPFZY4PgrXL7UCOY9QGS+1DzekXbroCRzg==
X-Received: by 2002:a05:651c:c1:: with SMTP id 1mr5760737ljr.119.1566650935326;
        Sat, 24 Aug 2019 05:48:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5b91:: with SMTP id m17ls1370808lje.10.gmail; Sat, 24
 Aug 2019 05:48:54 -0700 (PDT)
X-Received: by 2002:a2e:7a07:: with SMTP id v7mr5772511ljc.105.1566650934766;
        Sat, 24 Aug 2019 05:48:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566650934; cv=none;
        d=google.com; s=arc-20160816;
        b=UkiUP+yzT56kjQb6zjGWKkVwAtgrsHp4QBN96E2GlFw1sCp3+ev6vP8RQQO9q55o+H
         faKt30GwdYmVbCV55E9HnZ15lIKdmD9UHIqvKerA3+/fp/sSddv08ZN3rnTKUNK9s0pn
         vWVZGDWQu4fHLHt+IihL9IqN5oeZr26Yk8FXtj1bxNM9TPl8Q+A1cbn4/eyPPAAirXf9
         OKBUn1DI0+gKDCHzcj9XjA4k+55bBElQ0SAas6O156jWEHlTQn9N5+qVYFh031uWyW/k
         V6DS0CTRQX/2N9RAWEPqevw0ExpikjW4VyZFdZR3rDwspnLBtpEzsHXUbsNjTj5ilzHc
         7oFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KWoEeG6vs6VCUSeGXmHbpQT+ujKELvjfgOGYqoxN0II=;
        b=Gv8q2uDQHCPm43wD0vtPMnfYTH1AZspmdGFdkhz193dW84N8mGfTBwoJm8uDVdkR9b
         pBgTj8B9tKLIWAtTn+8vjuqDGwmveUBNsNciDYxSoKkM7+OMrrala0xIFdps3Yntxuc3
         sM2XPiGlweQzBQQShrT2F/o1O2wioga6iEZtmC5sdclK40fD5SewfDI0uM5m7/MRWKQe
         Kr/7NIbb3QWfuAXsomWmiqGg2F+gJjTl09nvDezLO3jBC4MnJabSpBb2QuiqIfcI1SFI
         WM9HvqIeXcdX/z0em5EBy3I02fiDzWHC6dhF6RJqcyZ1Z/T7g1QgpuqkzfjGPEGJbE8a
         cuKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vFr+uyBD;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id u10si254010lfk.0.2019.08.24.05.48.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2019 05:48:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id s19so9049232lfb.9
        for <clang-built-linux@googlegroups.com>; Sat, 24 Aug 2019 05:48:54 -0700 (PDT)
X-Received: by 2002:ac2:546c:: with SMTP id e12mr5441079lfn.133.1566650934562;
 Sat, 24 Aug 2019 05:48:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com> <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck> <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
 <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
 <CANiq72nUyT-q3A9mTrYzPZ+J9Ya7Lns5MyTK7W7-7yXgFWc2xA@mail.gmail.com>
 <CANiq72nfn4zxAO63GEEoUjumC6Jwi5_jdcD_5Xzt1vZRgh52fg@mail.gmail.com> <20190824112542.7guulvdenm35ihs7@willie-the-truck>
In-Reply-To: <20190824112542.7guulvdenm35ihs7@willie-the-truck>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 24 Aug 2019 14:48:43 +0200
Message-ID: <CANiq72mcSniCzMzW6AX_5tG5W2edjEmZ=Rf=jo-Mw3H-9RVJqw@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Josh Poimboeuf <jpoimboe@redhat.com>, Yonghong Song <yhs@fb.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Enrico Weigelt <info@metux.net>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, 
	Shaokun Zhang <zhangshaokun@hisilicon.com>, Alexios Zavras <alexios.zavras@intel.com>, 
	Allison Randal <allison@lohutok.net>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vFr+uyBD;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Aug 24, 2019 at 1:25 PM Will Deacon <will@kernel.org> wrote:
>
> Which bit are you pinging about? This patch (12/16) has been in -next for a
> while and is queued in the arm64 tree for 5.4. The Oops/boot issue is
> addressed in patch 14 which probably needs to be sent as a separate patch
> (with a commit message) if it's targetting 5.3 and, I assume, routed via
> somebody like akpm.

I was pinging about the bit I was quoting, i.e. whether the Oops in
the cover letter was #14 indeed. Also, since Nick said he wanted to
get this ASAP through compiler-attributes, I assumed he wanted it to
be in 5.3, but I have not seen the independent patch.

Since he seems busy, I will write a better commit message myself and
send it to Linus next week.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mcSniCzMzW6AX_5tG5W2edjEmZ%3DRf%3Djo-Mw3H-9RVJqw%40mail.gmail.com.
