Return-Path: <clang-built-linux+bncBDRJJBNBQAFBBPFBVOAAMGQECTHHVQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDE33003FA
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 14:18:53 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id l11sf3067444plt.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 05:18:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611321532; cv=pass;
        d=google.com; s=arc-20160816;
        b=lTbrISyesNnZNDWkg88EsBW40PVwmQ0IbX94nqCV2d4i9z2qfdzh8SKEukg22tZ8+/
         yc/99W+ndyHgCfyUsbaHes7zgfYvR85Bog14MQ80CsCL7CbjpRnLxKb6/s901tzVLvQo
         F9Xqo3k+U8CAMQYy7jhLeIJOW/4nmN4ITWCJjX295mgW4goOFfOwQ8hs69dwz0VvdMcL
         sjF8rl+Zan83lf3vhum8BSJr0gml/VNMyh3IXCtVpBONwectk4GWuGpYvtclyyybAbzk
         lh7DwWlh5f4pLAvq7ZN77mYnWcdrbwIvXlCDCrXiOsvC8AJ3m5QgLIi/i1s9hCigllO6
         r1ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=INKVIuQEpB0CLYgns6/0bBN/aejpf+zhLBuj1tKQyqk=;
        b=I/QnCdf1BD3dQexrNfO/2VFJY9S4EV3847oTbTz/rmV8lwkIiF3wMZCRTS6zYfteW9
         sMA/u7FD0x2l6mtB8eLzQ1ip8wFswhZFEXlo6IMn5pi3q7JadnzPf8NWWPkiigrtZ12R
         PqnWFkzJsSNAj7WpxOqlo8Gz++UqDkb85gQPauULL1VhHgRYfLXW4EYsKAbo2y0VZCdx
         cS/lPor3E8TQl5oTqx/O6NJBzdNSioIQL41aH/nHHRgQqPUJvINhlnuFeJLmAZlnqHvR
         ZsMn5KlKv4pdLX0AKpzPAFxdRqY9g8Uea/0YtssVtx4Vq9+hnZVj2xwJVriazQcDFlXM
         fDTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qex1eud/";
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=INKVIuQEpB0CLYgns6/0bBN/aejpf+zhLBuj1tKQyqk=;
        b=ofcs8T031lIE0ZsizwjPI790AlnXHsrJeDI5CbuJue0N2QimFYcjPxcGmkIkrHVnZk
         Nqj8bx91byaDWeEPSm0V0DQ8jvVUS6a9y3L6ZiDlG/SecDy5/E8d3Qs9Qn/0YxCZORiI
         lI2V8Y5PVHKv9BNB9cARoFVNPG5fLkhzXmEMNR38K0uyMxETyAtcObutzU17YncIzQ7S
         5xwBaXfmh9nEpyVB1HyNlIIAItQHm8N8U8UaG3PBzfpesCzzkQw2rALAaMTEsFPvycwM
         jAV/mV/dJylDCLlFsNZIN2nanAvIoJVdun3FeKpnhADg9mCseucpwZ63tbfC8cgBgVUu
         +QjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=INKVIuQEpB0CLYgns6/0bBN/aejpf+zhLBuj1tKQyqk=;
        b=T8nnuiirkIMHGRZxCUpH4QklopbRYJfGsSL4bOw4hLdlx38vYumqvYo7wVVO1xLgM9
         PiA/lhan/JBTE+i+h1EZvHg21fcs/2KumEQT10nGeDJLImrwmNyEy3BPQN/VGiF1rQp+
         LZ92UiNZM0sd1yto7BpJsvnYrAC36Ph3dRUEkLKfl+E9cmcRdOiTGODQfNkjKRwOvt64
         LNSJwfzH4TLCXtRNbnWm5s+UDRE/Ffu1wguusnaBejTikOVaJmLI9eYVlcxi7mFSxagM
         jZQT5PpM8nErp6pgEB48rmbU61fucIW0YdmhuEI4b4+riRT59F3ONwh66U/XH3GOtK2a
         2PcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=INKVIuQEpB0CLYgns6/0bBN/aejpf+zhLBuj1tKQyqk=;
        b=marKEVNU+XmK7X5c2N47AGzw7NCafMLmUQ8jKvJJ5GyGZ8MB3fvxE4fc6iu6+NiFv2
         O9Rt1024hEbytxB31pRaXSIToeCEUUlllAJxVSRFyQMyrPB3UfCMoM3cJzngXZM7e2n+
         oClBOK8jJnNVe1+xfyMfQqwdJPaaxLWIvw70JprcbSjq+OgFMIg0ZPCgJVZyckHdsqvM
         azXELqzi2fnwOieIFKgYNrRP/x4APwChrcFF+JGYhyzpXTn9HiYdC6pWFP1LdoJfN/Jj
         s3HM4xFl7duLodv2y4mC8SNOjxns3UNZTvOcpCQeZ4S2b3QMJIE4EJum7WE4C8QS8CoW
         k1EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BJp95O3j34LOBTmpwDNTQYlOroFg5a14SjzrrnxUi8rse6FnV
	87h8RattwvuNSLtClQ7F8YY=
X-Google-Smtp-Source: ABdhPJyMMZh0U9ffb7J5qfbQpLEW1+34vdrv3TidFTBVXy7q+GR2xAqHyz+FOBEExOHyz13+V0H9+w==
X-Received: by 2002:a17:902:d510:b029:de:72a4:ebf1 with SMTP id b16-20020a170902d510b02900de72a4ebf1mr4649879plg.11.1611321532604;
        Fri, 22 Jan 2021 05:18:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:5290:: with SMTP id w16ls3191297pjh.2.canary-gmail;
 Fri, 22 Jan 2021 05:18:52 -0800 (PST)
X-Received: by 2002:a17:90a:9503:: with SMTP id t3mr5252811pjo.189.1611321532029;
        Fri, 22 Jan 2021 05:18:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611321532; cv=none;
        d=google.com; s=arc-20160816;
        b=feW2SPQL7EWGazGCNi/Fp6p1NC+j7Iyuf4UeOOF8dAv+8uwVog7gHGlVU7r/APLmG0
         Hg9ohTUN/Xk632qcbQS7ao71iSL2ZjeqM5qB+FJh5BpWMW1tn7CjiBkxkTM56CC5BLV6
         LliZxIWcpyTWiI1nWxUzJSYpG0/rLwZM+EvKAX2CTeXjvu3q/U1pTjNSrW0CztA/wI1Y
         aBtw250r+Y1gZ/SM93kMpRtv+X/I0mCi9+YHJY19ghzCml7uJKLpT2gb8u1LEcxKfSj8
         SSe1J5ABBSCBpninGEi6P7UTJBrKNN6bdPECvRD8e0+q8+xkrQ26n0Kj+zzzJIBTg8RG
         1p+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2IuYY7Ptttp60mCGRmohDF14eaicEWNySULlVw9pTIE=;
        b=vTAnNW7UAbWTNDZw9XAv8Pc0Sr20ir1CFru0IDmsSF+9kiZUX7WmN98BXAdayoqe4c
         G/F3oWbi32zJcZLkBn0Ym5iYDumPsegICH3Wzu9JPWr+1PoNk/d1AlSO0GiYgBlMmRXJ
         8UprjapCFevCLmEUMrciU4yXtNd1TcgAyMT9p1xPzbPtOo73tPh0rNnmrKszGApxBF2t
         8syfU5cD98fM1bIENbDJeS52TNw/d2KJr/l8RIOBNq4B27cT9OANwAPLyZiWdpH4JTud
         Tx0WO7TOxQWVrwvhkxouB9pCb/sjugKoDs8gLyNh8rYBC1V9c/ku23j0gW0SmTVuYanI
         8noA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qex1eud/";
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id w2si210387ply.1.2021.01.22.05.18.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 05:18:52 -0800 (PST)
Received-SPF: pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id md11so3721099pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 05:18:52 -0800 (PST)
X-Received: by 2002:a17:902:e54e:b029:de:8c70:2ed0 with SMTP id n14-20020a170902e54eb02900de8c702ed0mr4946054plf.3.1611321531356;
        Fri, 22 Jan 2021 05:18:51 -0800 (PST)
Received: from ?IPv6:2405:201:600d:a089:5548:7837:8dcd:a8? ([2405:201:600d:a089:5548:7837:8dcd:a8])
        by smtp.gmail.com with ESMTPSA id b206sm8608751pfb.73.2021.01.22.05.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 05:18:50 -0800 (PST)
Subject: Re: [PATCH] checkpatch: add warning for avoiding .L prefix symbols in
 assembly files
To: Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org
Cc: lukas.bulwahn@gmail.com, dwaipayanray1@gmail.com, broonie@kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 clang-built-linux@googlegroups.com
References: <20210120072547.10221-1-yashsri421@gmail.com>
 <e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel@perches.com>
 <14707ab9-1872-4f8c-3ed8-e77b663c3adb@gmail.com>
 <fb1b511d71761c99a9bece803f508b674fce9962.camel@perches.com>
From: Aditya <yashsri421@gmail.com>
Message-ID: <98d40817-1f80-c772-eb9e-a6c3c04625b3@gmail.com>
Date: Fri, 22 Jan 2021 18:48:43 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fb1b511d71761c99a9bece803f508b674fce9962.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: yashsri421@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="qex1eud/";       spf=pass
 (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;       dmarc=pass
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

On 21/1/21 12:13 am, Joe Perches wrote:
> On Wed, 2021-01-20 at 18:23 +0530, Aditya wrote:
>> On 20/1/21 2:51 pm, Joe Perches wrote:
>>> On Wed, 2021-01-20 at 12:55 +0530, Aditya Srivastava wrote:
>>>> Local symbols prefixed with '.L' do not emit symbol table entries, as
>>>> they have special meaning for the assembler.
>>>>
>>>> '.L' prefixed symbols can be used within a code region, but should be
>>>> avoided for denoting a range of code via 'SYM_*_START/END' annotations.
>>>>
>>>> Add a new check to emit a warning on finding the usage of '.L' symbols
>>>> in '.S' files, if it lies within SYM_*_START/END annotation pair.
>>>
>>> I believe this needs a test for $file as it won't work well on
>>> patches as the SYM_*_START/END may not be in the patch context.
>>>
>> Okay.
>>
>>> Also, is this supposed to work for local labels like '.L<foo>:'?
>>> I don't think a warning should be generated for those.
>>>
>> Yes, currently it will generate warning for all symbols which start
>> with .L and have non- white character symbol following it, if it is
>> lying within SYM_*_START/END annotation pair.
>>
>> Should I reduce the check to \.L_\S+ instead? (please note "_"
>> following ".L")
> 
> Use grep first.  That would still match several existing labels.
> 
>> Pardon me, I'm not good with assembly :/
> 
> Spending time reading docs can help with that.
> 
> Mark?  Can you please comment about the below?
> 
> I believe the test should be:
> 
> 	if ($realfile =~ /\.S$/ &&
> 	    $line =~ /^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) {

Joe, with this regex, we won't be able to match
"jmp  .L_restore
SYM_FUNC_END(\name)"

which was replaced in this patch in the discussion:
https://groups.google.com/g/clang-built-linux/c/-drkmLgu-cU/m/phKe-Tb6CgAJ

Here, "jmp  .L_restore" was also replaced to fix the error.

However, if this
regex(/^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) is
correct, maybe we don't need to check for $file as we are now checking
for just one line.

What do you think?

Thanks
Aditya

> 		WARN(...);
> 	}
> 
> so that only this code currently matches:
> 
> $ git grep -P '^\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L' -- '*.S'
> arch/x86/boot/compressed/head_32.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> arch/x86/boot/compressed/head_32.S:SYM_FUNC_END(.Lrelocated)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lrelocated)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lpaging_enabled)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lpaging_enabled)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lno_longmode)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lno_longmode)
> arch/x86/boot/pmjump.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lin_pm32)
> arch/x86/boot/pmjump.S:SYM_FUNC_END(.Lin_pm32)
> arch/x86/entry/entry_64.S:SYM_CODE_START_LOCAL_NOALIGN(.Lbad_gs)
> arch/x86/entry/entry_64.S:SYM_CODE_END(.Lbad_gs)
> arch/x86/lib/copy_user_64.S:SYM_CODE_START_LOCAL(.Lcopy_user_handle_tail)
> arch/x86/lib/copy_user_64.S:SYM_CODE_END(.Lcopy_user_handle_tail)
> arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_clac)
> arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_clac)
> arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_8_clac)
> arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_8_clac)
> arch/x86/lib/putuser.S:SYM_CODE_START_LOCAL(.Lbad_put_user_clac)
> arch/x86/lib/putuser.S:SYM_CODE_END(.Lbad_put_user_clac)
> arch/x86/realmode/rm/wakeup_asm.S:SYM_DATA_START_LOCAL(.Lwakeup_idt)
> arch/x86/realmode/rm/wakeup_asm.S:SYM_DATA_END(.Lwakeup_idt)
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/98d40817-1f80-c772-eb9e-a6c3c04625b3%40gmail.com.
