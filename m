Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRVEU6FQMGQE43HXUBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id B869A42FBBF
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Oct 2021 21:11:03 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id b29-20020a0565120b9d00b003fdc9b2546dsf2361391lfv.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Oct 2021 12:11:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634325063; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jn2O2J9YFlS+Jndn0ggay24kaPaoHYm/z30IHoJjf3pJ6MtxhF2iczK3qTOF4EEM8P
         TqONufDb3CuZjm5xbrUZTLrJNnu23lRKeGH4UUQnhE6LqlBH5M7ivrlv/YeF+yWb0Sth
         2da4Owsu2fG9kXlhucSH7meOYlJifr6dcyUFw92p3HnPFTmtWSZAug97eYWrpa0mU7Dz
         +G9oY1B8MmDm/P/VPvVeX4yk70JegzEgqhac/DNh/ar2mTFuknsY5P5vlJv/KoMwcpxE
         ACS4Wa1g3sihmm6juXtdylbW3OMSrQZcjr0/I3QbXNc29pM+87FG110mocnG6a0ZAb0a
         7j6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sV4uL7A+/ZyNv61HCJnD5GnwlB4fLrgnE/w0Mnvwokc=;
        b=M/kbSu/JQ+PvCsNjIExWj3pYEVqZ1+OTiIwfGburKybmJBrNkFefhDvkHBrD7dedpk
         qCpdtBPdo2iJSf9YuOrC0677c1UADjOxiHTDrzLYBvDkKWtSytmoJgF1qRjbIkJoeX5U
         o42JS2RkeRsbkMksjPNsU0KYEbsvi2qRp4v1nTNCkmICTy98plIzx54/7JUiNmcI+JZJ
         eGieE5sUJzfeeFytRWzVKyggiYCS3/Gcxt9zCoJ8wbRUkjMLxEVzP0znDQLOgV372Kca
         htSgtp0FCKeNP3q01Gm2MQKCqQnS5xSNQJnu9LI3crvgxzw2BXD+RhQIcURwRil5K4NY
         NKrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=KItGKghb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sV4uL7A+/ZyNv61HCJnD5GnwlB4fLrgnE/w0Mnvwokc=;
        b=iCOBDYWqN+hHLTsHwlJ+P9Y8PCU91P92s5GlQoxHoAZ4qFb/1oBi0lZldJPXYxlDtC
         JE+ixKNU5lzP2WGNYQTaWBzDHd7efvW7auPy+66AwTMkC187ZIrAVclHlufpKaSGUzRk
         rjO9QLSIDRRNwStrr15jP9HJaVjvZ/Xu2pJa14+6d87y5tPT2oFf59wGg2bwDflYeHu1
         9cuDhhZjTblwNVjBEj7iSoZgXO1VOf5+dJMKyr+8U7GKOHaoOhIhq/hUBQRzWN1vXaC5
         matMobRFLvZUepPdkV858xzGsRJmt4f3EFEkyoJU4Su5NaVcPII/BxOzeO4/b72g6XuH
         nJbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sV4uL7A+/ZyNv61HCJnD5GnwlB4fLrgnE/w0Mnvwokc=;
        b=gLuLjCwsMRdZNczpl+LUV04omQ8WVu/FJAAkSsXjlZIeD3c7JhWchzxvmrb3eviaN4
         p0A5awGN4IurGPYhF4S7me3HGpchKRunVWrrEr0lpPES+ehp2y9sj319L08CX1U05X4B
         RDQh6l+rSqBbb8Owmqt9q0IlI0UiZP3PzXLW0dyPrpeiiAHCwtXoOZitTpQkMDNV2VpZ
         j+VFU5lv68ykRXGqPfZI1fJ5Y7bN5V20ZuRpM0jPYdtVi4cnKFprnRznkUAiXaH2ZqfH
         oVS88DKfpPmue/+QjlQVXLf4E8vDX/5CHlxo9ysvfP+0ZYeSfd67jXWcDcgOcdyL5h6M
         h5mg==
X-Gm-Message-State: AOAM533QTDiU6FhQwMvpnDBSS81qSjWqagItKrr0VDRpexgmfZmbC4Xg
	17DWbWlISnmicmqCSCJqDCE=
X-Google-Smtp-Source: ABdhPJwoMCGVZ7mUiA29MjslIonyFG5wst4IIcLxa2pOYaInFnLj5jGeCL0yDqB+Gf4qE0SfP334hg==
X-Received: by 2002:a05:6512:2347:: with SMTP id p7mr13045299lfu.558.1634325062297;
        Fri, 15 Oct 2021 12:11:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3081:: with SMTP id z1ls542413lfd.2.gmail; Fri, 15
 Oct 2021 12:11:01 -0700 (PDT)
X-Received: by 2002:a05:6512:3a8d:: with SMTP id q13mr8176186lfu.172.1634325061295;
        Fri, 15 Oct 2021 12:11:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634325061; cv=none;
        d=google.com; s=arc-20160816;
        b=AE3QlLRlibqs773WSmokWKOzXlaDrI9fe87UqVgVzfd5GZek8JfOCyzzPc6HLR/7ln
         qcJ8PTDaa/WPPmsDAZGcWmDHKp4VA8Wf2FrG7yniPxwAoFWiMOuLVPUe1zB88ph6JAHh
         0rfdJ1r8ImBdLcuajfxRlrMX6BMKSe71vrJCVT0SB/yf/byksEDnaxE6KTN0mgASU0wB
         KtlOOu0Ljdz4YlOkhRlPdXTC6DjYOO5muhDmd77M2hQAr7Dfq5N+yEAcH9N47rv4YQ02
         g37Y2n2G+2jFMY9+//1kkQwebVjmdUjl670TZJIifH/Ab07b7zdx5Zi+Ly6mMzWZEbv4
         rQAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oI0JQpdNcS1rPABaNRpOZ/cT39QBnr4F5JH8mM3KD1w=;
        b=wV3O/IABBdjQ6KDCuLdqOaPKOoUPPNi5iDX1ioKQ6IV7VMeSiao6b4flf0zj1oj0bi
         gmOb4JeobTS5s6Xilc+ENBx07lEwslf/XHxCM/pRzMwrYnrWhbEn+hBKiuTlkN/iOuLQ
         jgKzgyMo365eSzXbr6elzb0F0/vvA+xBz47UOGVwzxmhDBtVec95TJ1IRy9/ZF4h7lVR
         E/hYvpcNxlyhntP9hQT7t8HP1DiiyIe7zwfcXOj36kezinmwt5VAhVEfF10cmcXBg8NF
         yU3BgGIpe53iBMvFGrY7NUkbF1V3nNh8FED87WPlwWqnrqhZ+gHPmHuyt6aE8ctivwFH
         oqZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=KItGKghb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id d19si416258lfa.0.2021.10.15.12.11.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 12:11:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id r19so44585377lfe.10
        for <clang-built-linux@googlegroups.com>; Fri, 15 Oct 2021 12:11:01 -0700 (PDT)
X-Received: by 2002:a05:651c:1108:: with SMTP id d8mr14747364ljo.220.1634325060799;
 Fri, 15 Oct 2021 12:11:00 -0700 (PDT)
MIME-Version: 1.0
References: <1634167668-60198-1-git-send-email-ashimida@linux.alibaba.com>
 <CAKwvOdkv70XDdK-k3n4ycFQsz+h7V-sTiH8RuxxaLofp-okweQ@mail.gmail.com> <722d9662-e27c-2efb-e8cf-d505b6950475@linux.alibaba.com>
In-Reply-To: <722d9662-e27c-2efb-e8cf-d505b6950475@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Oct 2021 12:10:49 -0700
Message-ID: <CAKwvOdmfbcT5bWhm5zVhuBRjx4PxLXY8dKUCV0JFrSKRy1Bpwg@mail.gmail.com>
Subject: Re: [PATCH] [PATCH V4]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Dan Li <ashimida@linux.alibaba.com>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, catalin.marinas@arm.com, 
	will@kernel.org, keescook@chromium.org, nathan@kernel.org, tglx@linutronix.de, 
	akpm@linux-foundation.org, samitolvanen@google.com, frederic@kernel.org, 
	rppt@kernel.org, mark.rutland@arm.com, yifeifz2@illinois.edu, 
	rostedt@goodmis.org, viresh.kumar@linaro.org, andreyknvl@gmail.com, 
	colin.king@canonical.com, ojeda@kernel.org, luc.vanoostenryck@gmail.com, 
	elver@google.com, nivedita@alum.mit.edu, ardb@kernel.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=KItGKghb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Fri, Oct 15, 2021 at 11:29 AM Dan Li <ashimida@linux.alibaba.com> wrote:
>
>
>
> On 10/15/21 2:44 AM, Nick Desaulniers wrote:
> > Overall, I'm happy with the patch and am ready to ack it, but I would
> > like to see a link to to the upstream GCC feature request for SCS (and
> > one created if it doesn't exist) cited explicitly in the commit
> > message.  I think that would be a good demonstration that this can or
> > will be upstreamed into the compiler proper for the compiler vendors
> > to maintain, rather than the kernel folks.  The compiler vendors may
> > have further feedback on the approach, such as my question above
> > pertaining to inlining.
> >
> I have submitted a feature request to the gcc community, and waiting
> for a follow-up response.
>
> Is it fine to add the following description in [PATCH V5]?
>
> A similar feature request has also been sent to gcc.
> link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=102768

Yes, and you can include
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
too.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmfbcT5bWhm5zVhuBRjx4PxLXY8dKUCV0JFrSKRy1Bpwg%40mail.gmail.com.
