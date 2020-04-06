Return-Path: <clang-built-linux+bncBAABBL4OVL2AKGQE5JNOYQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E128F19EF26
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 03:34:40 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id a8sf12915136oia.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 18:34:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586136880; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tesfmr6Ai8CS0l2l173jhhSTy6OVScBOz/p3fp5VF7F+qtx5PU5zTIrMxjel1kQslS
         EjTT8T828J1lzFRQSiIIxXKG77VuY759GgcKY2Un+c5QxlXt2Tv6H3w/x+d6uNK/Vcda
         B9UsoDofkQHjhst+QAEDBg0cmV25IOOVNsDArIfz9eCe1Dw2dwvgBeZbj2sISb7VausM
         bz6HTRa2FlMA/A5uoPsoxhi8CQBnO34RnSY6HevNnMOwB87qh5Zqn/4ba6WR/yHfYkRJ
         qvsYuj7DX8BD8v5VGy74x/NhOTkJUvlCaysmsJPPGOvFrEh+upyzpu5QpyOQvrPNRCDK
         xqSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=xt6f7+MJRvJkYl0KpdEv0e9pBPAURm1KyjbprU93I2M=;
        b=kiwDM0O3VJ4tUlk3wOwibrnKw1VP95YkcEotTGifJzKfjBtO52iEDaXsij8MV0Bm9E
         mtfKkze4xKYWNbgMOavXJ6pBypAHIm8nQ8aMEZikOYH4KKEf6PUwhQe9YxC8uxDWQeFP
         B5bzUiRvk87tmmC2PR8rdCRVLKA8JiPpuREu9/1Uf9h49Ck/PkRx/p0yMGJm7ps4JBbf
         kQ2k5XvZFizBzRT0gYRpz+4XkbhyBGlKRZDZYXtubz30OQvPkoicFHQ3lt8UbcsKNOOQ
         p5sw11hoXTM2IkKbt/qEjWp1vXj8L+fYTZ6qF10dz3wSBEo7lnMU3mhtVYh2F9qT8iAc
         PVog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bMm9k1da;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xt6f7+MJRvJkYl0KpdEv0e9pBPAURm1KyjbprU93I2M=;
        b=cU4WeWIIy3MjharmW9s9ZOSWYsZbGT2AsxVByxc1TxX5ucfJu+x2k4f8OcW273C7HK
         hWLUn/43m7Kf+u0REuXLINOqgeh6VCtBSGgB/yNAcvlm4R3feGpmkltiuykWBGSlBlAJ
         mENKFpWyGfHMiwcQRX9czQ4lizrPE/6k3vgsnbz+gjkD63AwsTR3tF3PhsT6347KXGk4
         3haVVpkGv6rI+nWPY1xjOvryoT1C+pkQY3vCOcOStIh9ad612yYeblX04qAoLa7RjrCH
         ZENhr9aliGm4qrY8JAcoLHjwmP4P/g5etkJgusu9IXJLO4lLbvI581lJlY2pCOnTnW+6
         qcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xt6f7+MJRvJkYl0KpdEv0e9pBPAURm1KyjbprU93I2M=;
        b=ao1FdooWaG2UezTk0C2kbaui2jEyHHsRn4wt2X4/4BF9ncvXUHQA9d7hyjHmskktEc
         P0b9+ZYkfjxaKeYxkbVosn2pShaSIJZVWAGBepHvlpsYXZd5V6qUiQu07LMqlgCzGErK
         OjB88FCRLLwqmePstDksA2ZGMOCsajq8T8OJS4auOokfu8az1WcgJ2UOThKmPbjHQvHD
         q0s1riGkuybZG9/HwEp+y1v/Zs6DaXvVmepgU4kdTiw4WYpepXi0O/P46HszBsuca5XP
         PVV0K8QnIQ4tDhSaZBQgJsExYwq+/j9rBxZimsPaY9uoIXp5knBENGJDp3LihEIvFie/
         f1HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZkWvegOvun4wal4CSFwPwI3KITc5QfE/ucpEiZ3KhnAR6mf/Do
	71UTY1aTQBgZnla4q99F97k=
X-Google-Smtp-Source: APiQypL8qkc/rngpIpEzOJPIRZtqLcLRAOsJzIjPwEklbU3GYR8MYId4uOjP99finLVggLwwa1zCSQ==
X-Received: by 2002:a9d:7a47:: with SMTP id z7mr16159021otm.290.1586136879862;
        Sun, 05 Apr 2020 18:34:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls7094814oib.5.gmail; Sun, 05
 Apr 2020 18:34:39 -0700 (PDT)
X-Received: by 2002:aca:61d4:: with SMTP id v203mr11522247oib.72.1586136879521;
        Sun, 05 Apr 2020 18:34:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586136879; cv=none;
        d=google.com; s=arc-20160816;
        b=plDu6HZvIKaF1vWw+tgSbDhPqiw76fveOJdMJ2VX/cfKo8n+Cj39482ay627T2ZpK+
         AMadYIPKoIKgYiY/qtZOuyrGHtYW/Bzy5gNbPRfJGJgFbrmyxJhd/EPBjiqkcM75rCEa
         AWNXAiPC63Gvcg2AhSngObVdQjp+rZmp1ZvgAIE8Xj4uqiAuT8jB6a64KS0wxZEgM5lg
         BCiPfxkPfDphPVXtF8eJDrA+fGqISZYZyNKpGl5m2rqdBFjkq5nxmHwZOjtGfUivB7aC
         6gjzvui1bJC3+ccbTgDR4zSBlHVSHBTj6puqOnwP+qaCmrTvCil3YZbmdlgDqwhgC4zl
         9ulw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=WggtXRihTH+Wz5QBc889jtnhJke76W/cxwCtqWHtd04=;
        b=VCAstBWZD9uGjLuwmgFoR+bwgMRkJeYmggn5AMS81Ffrewwp59/3wshnfsd5Yffden
         UhmymiPvLacy0iTZzFStX9clEkeaYctJH+B0lXCDz2jniTiaWVa2Eh1lvlnfbj6IEUmZ
         5QBzG8HlD0lD9RbLENIziadcPz7nwMrkqkgxhf2QlZiCllZIPYkgV0ckziLEvm8rPFWA
         PrkLeN2aBkzefOTc1T7BJ65I/bzOPRCNbo+7/hIM7gEtxG2m93xyJGX89relxpkr4UFy
         +QYj5a2rekV+IDOsHV//pXYO6qYIkEJZlKZapzrSbkYoZwkykEywJsqsI+MITL8vpLH3
         QEZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bMm9k1da;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id x23si1137440oif.2.2020.04.05.18.34.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Apr 2020 18:34:39 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 0361YHVw029317
	for <clang-built-linux@googlegroups.com>; Mon, 6 Apr 2020 10:34:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 0361YHVw029317
X-Nifty-SrcIP: [209.85.222.44]
Received: by mail-ua1-f44.google.com with SMTP id v24so4941754uak.0
        for <clang-built-linux@googlegroups.com>; Sun, 05 Apr 2020 18:34:17 -0700 (PDT)
X-Received: by 2002:ab0:2790:: with SMTP id t16mr13453216uap.40.1586136856501;
 Sun, 05 Apr 2020 18:34:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200403051709.22407-1-masahiroy@kernel.org> <CAKwvOdnaZ6qDVxaPY-GEH8pdUkzH6eqm16ok9_wzRSVRG-1kiQ@mail.gmail.com>
 <CAK7LNAQybfcYiosNU+ybd-Q7-Y2dbLqBVN2XA00wCRnFAoqdew@mail.gmail.com> <20200405235507.psjjhqa3cxw57xra@google.com>
In-Reply-To: <20200405235507.psjjhqa3cxw57xra@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 6 Apr 2020 10:33:40 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS_SQg2nhJ8HKBTq3+dziGpaJZ87fOBRS-ZMdUpKGhX9Q@mail.gmail.com>
Message-ID: <CAK7LNAS_SQg2nhJ8HKBTq3+dziGpaJZ87fOBRS-ZMdUpKGhX9Q@mail.gmail.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        =?UTF-8?Q?Matthias_M=C3=A4nnich?= <maennich@google.com>,
        Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=bMm9k1da;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Apr 6, 2020 at 8:55 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On 2020-04-06, Masahiro Yamada wrote:
> >On Sat, Apr 4, 2020 at 3:24 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >>
> >> On Thu, Apr 2, 2020 at 10:17 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >> >
> >> > As Documentation/kbuild/llvm.rst implies, building the kernel with a
> >> > full set of LLVM tools gets very verbose and unwieldy.
> >> >
> >> > Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
> >> > GCC and Binutils. You can pass LLVM=1 from the command line or as an
> >> > environment variable. Then, Kbuild will use LLVM toolchains in your
> >> > PATH environment.
> >> >
> >> > Please note LLVM=1 does not turn on the LLVM integrated assembler.
> >> > You need to explicitly pass AS=clang to use it. When the upstream
> >> > kernel is ready for the integrated assembler, I think we can make
> >> > it default.
> >>
> >> Having this behavior change over time may be surprising.  I'd rather
> >> that if you want to not use the integrated assembler, you explicitly
> >> negate it, or just don't use the LLVM=1 syntax, ie. `make CC=clang
> >> LD=ld.lld ...`.
> >>
> >> We could modify how `-no-integrated-as` is chosen when LLVM=1.
> >>
> >> make LLVM=1 LLVMIA=0 ... # add `-no-integrated-as`
> >> # what the flag is doesn't really matter to me, something shorter might be nice.
> >> make LLVM=1 # use all LLVM tools
> >>
> >> Since we got rid of $(AS), it would be appropriate to remove/change it
> >> there, since no one really relies on AS=clang right now. (We do have 1
> >> of our 60+ CI targets using it, but we can also change that trivially.
> >> So I think we have a lot of freedom to change how `-no-integrated-as`
> >> is set.
> >>
> >> This could even be independent of this patch.
> >
> >
> >I also thought a boolean flag is preferred.
> >
> >AS=clang will not live long anyway, and
> >I hesitated to break the compatibility
> >for the short-term workaround.
> >
> >But, if this is not a big deal, I can
> >replace AS=clang with LLVMIA=1.
>
> My mere complaint is that it may be difficult to infer the intention (integrated
> assembler) from the abbreviation "IA" in "LLVMIA" :/
>
> Something with "AS" in the name may be easier for a user to understand,
> e.g. CLANG_AS or LLVM_AS.




I see 'llvm-as' in my PATH,
but it is a different kind of tool, right?
(converter from LLVM assembler *.ll to LLVM bit code *.bc)

So, I thought "LLVM_AS" might be confusing.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS_SQg2nhJ8HKBTq3%2BdziGpaJZ87fOBRS-ZMdUpKGhX9Q%40mail.gmail.com.
