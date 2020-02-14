Return-Path: <clang-built-linux+bncBCS7XUWOUULBB3GCTPZAKGQEOARORFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4187315F199
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 19:05:33 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id d22sf8260246ild.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 10:05:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581703532; cv=pass;
        d=google.com; s=arc-20160816;
        b=LhoNa0tw/7tqFfztXqMHgAi+Q5/LFZ12qwppTv/OEINUo6fVYAwfHHqV2XAdjM5kTj
         WBLvVl0GNpv9FBgDrH58HMdw94nWN42PKBDQ82IVu7ZIfjlS38E+KxJAnXJJqQ6EKvyS
         804o/AZGk8W+ai/tTRtqqEMCj/lDcip0B+jJEKRIgZRIBDqSvF11AEvAwJh6nOWxv0f+
         iic4R6UcJfpSirsPiLG0zOjXZMnLNHXwMEK9CZQ+YtfuNTGD/MJTA2K+gJ6/mx14oTtV
         KIz0zLRgVHX+LursN4xxfG+RUr7jXQ2uACNXssj2uW9BA/At0hGCXiZrvzilycq80TNG
         R0jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mF5Z71W0rCGsFvCNDzSuUs6aL7zFimUql41hobZy6ss=;
        b=op1nNgsh3TG6Kedyt0MX6GHPDbKnbmT6vAEAu4dyKq0yWfo+UxKopZD5Mc8Xu2bjow
         TtAfRWToS5qdA69lBtLiyKu451Kv3JCRdJH/xyrG1tXWlv7ObfNE/Hwn17dB7bVUMsyM
         QlxHkpBU+GyqurusPkO0whu+MW17NT2z/Ux6ZsZXnH6lqbwwPHMul62qGHGtT1s311Z1
         IHrAuzMYArUMg1n0qglGsrWBH/2DimrUA0a6PLyv3+SvhcozfhFn8bvzIVtuakUsf+Tp
         E0j3kQNePj1L8YQgJsN8qBbFkW4SvyD9+LWtthrtvtHQJBjApLZjkYnrKEU1yEsR44D0
         6gNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X5AmDy0k;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mF5Z71W0rCGsFvCNDzSuUs6aL7zFimUql41hobZy6ss=;
        b=kZY0q/LeqXjbeSPmyretTm/90zA0ZUInCnjM0lk0tpGYCNjIOYFE9JxAejflKjmJTZ
         ZfauCcklzMKb56ccU+X1zAbEFeN9xKy08f7wtwV3k1KP69UUrxxfLSTUJhZoGIVnPePd
         uS4h6Y38SQWcpgqzaJq1fDtjMNGkdOffV5VupfIcz9aEFt3hU9Ax7khAYixS5lO5t4Ku
         s/tMWz8unNSumd062GzRa5JBlQPMWGth/AL3F4Mn3Mklw3y7eP+ZF5zUhx9TbqURVCML
         bLyYDTdRdgRMd2LjttXb0hfqHGW/fDGE+Mt4I55V7KKSIJVIRhW6UTcRSUeECt9vq/eK
         HUlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mF5Z71W0rCGsFvCNDzSuUs6aL7zFimUql41hobZy6ss=;
        b=bgfnhAYsXAnnI7sUD0ZiLpPiEVBtwRCFpSx69+2iZE28Zs5vqKau8SOdajLzojUJyj
         4tVMzroUwxPxXGmFDhh3VuloYHElKMvxGIk8wbpvwglElEdKeNxn3mmws0KIQnVLKVso
         +ov4+u/N1GV/k+6TXJ96mXCflPw6SnVuaTEjtsm4gAwLjAS+PQLbQAEGVWTNpGIpLTPs
         e0FJllX2hpo59S4CAzmA8TE0l44EUuONTbRKeTY4BB7z/5hWvt8hLeYvxYT9eUbDz6B4
         WXJiFPTrDKTv+rANVioou8qo2WkMDDv9D24UcpLz5vp+hMFdjoe1Q0yLOB47EK4PPCeA
         V87w==
X-Gm-Message-State: APjAAAUeYWSu5jbLy4b7+jKd4qZjpoPSjC7laUzHo8OTnTTQGXo5/bny
	EKWf7CBHtSHvEmym5s2R4Os=
X-Google-Smtp-Source: APXvYqw5NgPbjPfnj9OJKlblvpeJVUzW+I31XXQBYP1/9RPn/BPBoEFqNmMbAr35sL5aZcyibpDOAA==
X-Received: by 2002:a5e:d616:: with SMTP id w22mr3154328iom.57.1581703532230;
        Fri, 14 Feb 2020 10:05:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:85cf:: with SMTP id e15ls645594ios.7.gmail; Fri, 14 Feb
 2020 10:05:31 -0800 (PST)
X-Received: by 2002:a5d:9499:: with SMTP id v25mr3196212ioj.66.1581703531787;
        Fri, 14 Feb 2020 10:05:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581703531; cv=none;
        d=google.com; s=arc-20160816;
        b=Fmew/UPEJmCvZJRB6jFIDE2t0uNcaIprWpu66qwgIdcPXU8vGAhqMUT7v8CXYytA1m
         tPVlGOCdRnx1Yvy/kQqT5Oi+S8sLh/oD+4Dn/38AcaJ1jZfBaBrvbnEQGxqdiYFJJmvx
         h735ocUJ26UONxRHGbrOo+cpo2Qrek+/cH/Hs6QajQypAkSVZKodFk5mMXyr4jXxrqx0
         brwI4wqT0oIyF7iyo+ClToB3BleTt6lXvsDnfawIf78Um9pPD77SgSwKblFDGrb3Cgqa
         vzImc9BREe3NF4kYhS2yMU69nVXPtnyD3dPJj3XTdOToWeZ1vb+W4Hql+ujhW5OLYXbb
         MgFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9PeJVIEeg3tPQINwbm2y3Jjzsm6FgJXYc98QBZ5VnR4=;
        b=btT7BhEphE866IhSqRgNAYICBMJuu1ny8p9HdcH9coOKpoDjmR2ZQ/19HwOrVR++6o
         ig2PgodRizxF91vaNzZnf7JrtlVLswlyDZTrgLtGc77v6nGL5QC09dXSMZBQCLj3jwXG
         dqPtO0JJp9dP/Zl586yvVRCPNHsIO5fxuojQo5ZNsvCKxzEItgdKxPRBOd187oS9n+9Q
         F5qEFRFFaYAgvCJV4YOhhIbM7Md6OTr+mPG7JFvD6oE38XJhH0mvXszUu5Rolnjdouz4
         3fwF2tv6nhCB9XN+YwHtVnLOImPZ7Np0y9It8QO5TJsQBVyJWuFySgivu6HugPRIYZkm
         fUIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X5AmDy0k;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z6si369563iof.2.2020.02.14.10.05.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 10:05:31 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id n7so5253980pfn.0
        for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 10:05:31 -0800 (PST)
X-Received: by 2002:a63:ba03:: with SMTP id k3mr5028786pgf.52.1581703530837;
        Fri, 14 Feb 2020 10:05:30 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id p16sm7474658pgi.50.2020.02.14.10.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2020 10:05:30 -0800 (PST)
Date: Fri, 14 Feb 2020 10:05:27 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>, jpoimboe@redhat.com,
	peterz@infradead.org, clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
Message-ID: <20200214180527.z44b4bmzn336mff2@google.com>
References: <20200213184708.205083-1-ndesaulniers@google.com>
 <20200213192055.23kn5pp3s6gwxamq@google.com>
 <20200214061654.GA3136404@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200214061654.GA3136404@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=X5AmDy0k;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

I know little about objtool, but if it may be used by other
architectures, hope the following explanations don't appear to be too
off-topic:)

On 2020-02-14, Arvind Sankar wrote:
>On Thu, Feb 13, 2020 at 11:20:55AM -0800, Fangrui Song wrote:
>> On 2020-02-13, Nick Desaulniers wrote:
>> >Top of tree LLVM has optimizations related to
>> >-fno-semantic-interposition to avoid emitting PLT relocations for
>> >references to symbols located in the same translation unit, where it
>> >will emit "local symbol" references.
>> >
>> >Clang builds fall back on GNU as for assembling, currently. It appears a
>> >bug in GNU as introduced around 2.31 is keeping around local labels in
>> >the symbol table, despite the documentation saying:
>> >
>> >"Local symbols are defined and used within the assembler, but they are
>> >normally not saved in object files."
>>
>> If you can reword the paragraph above mentioning the fact below without being
>> more verbose, please do that.
>>
>> If the reference is within the same section which defines the .L symbol,
>> there is no outstanding relocation. If the reference is outside the
>> section, there will be an R_X86_64_PLT32 referencing .L
>>
>
>Can you describe what case the clang change is supposed to optimize?
>AFAICT, it kicks in when the symbol is known by the compiler to be local
>to the DSO and defined in the same translation unit.
>
>But then there are two cases:
>(a) we have call foo, where foo is defined in the same section as the
>call instruction. In this case the assembler should be able to fully
>resolve foo and not generate any relocation, regardless of whether foo
>is global or local.

If foo is STB_GLOBAL or STB_WEAK, the assembler cannot fully resolve a
reference to foo in the same section, unless the assembler can assume
(the codegen tells it) the call to foo cannot be interposed by another
foo definition at runtime.

>(b) we have call foo, where foo is defined in a different section from
>the call instruction. In this case the assembler must generate a
>relocation regardless of whether foo is global or local, and the linker
>should eliminate it.
>In what case does does replacing call foo with call .Lfoo$local help?

For -fPIC -fno-semantic-interposition, the assembly emitter can perform
the following optimization:

   void foo() {}
   void bar() { foo(); }

   .globl foo, bar
   foo:
   .Lfoo$local:
     ret
   bar:
     call foo  --> call .Lfoo$local
     ret

call foo generates an R_X86_64_PLT32. In a -shared link, it creates an
unneeded PLT entry for foo.

call .Lfoo$local generates an R_X86_64_PLT32. In a -shared link, .Lfoo$local is
non-preemptible => no PLT entry is created.

For -fno-PIC and -fPIE, the final link is expected to be -no-pie or
-pie. This optimization does not save anything, because PLT entries will
not be generated. With clang's integrated assembler, it may increase the
number of STT_SECTION symbols (because .Lfoo$local will be turned to a
STT_SECTION relative relocation), but the size increase is very small.


I want to teach clang -fPIC to use -fno-semantic-interposition by
default. (It is currently an LLVM optimization, not realized in clang.)
clang traditionally makes various -fno-semantic-interposition
assumptions and can perform interprocedural optimizations even if the
strict ELF rule disallows them.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214180527.z44b4bmzn336mff2%40google.com.
