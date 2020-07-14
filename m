Return-Path: <clang-built-linux+bncBAABBLWEW34AKGQEKMWKUBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA6A21F0BD
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 14:16:46 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id l4sf14185715ljc.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 05:16:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594729006; cv=pass;
        d=google.com; s=arc-20160816;
        b=OGH/5lQ2ijvsfbywvWFwMB46DwYICjfnDBstzflc+/Yu/lql9gIeYGD67uAQlgG4IP
         6fP8c9qy8Yxzu1nY8HKJCynt6AAfQuOLIqL1MkGZz9DrGtPZpIj3EGMngRCdUEG9sLbI
         vDiz9epJHC+CjeklWqSfxMKCBY58dIamPwwWQ8jIARI3i8xo7Y6tOy03orOR2HNrvFDh
         L3J5YQzVCIEwsQGP2RMresdv/Zcg3bnnakfmRz5tYxHWfWe3R03+ypgNzLlNbcVii6XG
         vq6OoWfbkx2ndfu43UaPibUFInanbHTyoJ8WsiLteP8rzcG4GcHm23uJY9yZe6fhTZEn
         hyGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=4ayq4fgGnz3yXmLP2V2QgrlvoHwuATUVm84FKl0W3wA=;
        b=GjAgkGPB84Du1eISuttUlq2nLTHI55t4VUopL9l8df2W65KwKW+DwI5JX/v7KA6bGF
         PHB3inlVNXXGOmzKrpKh31pWYpwi+OY+XccJLM6ZvLtghs4qe3BFkpaKHD/fn9tRAD+M
         /I1GKD6iSSg7DmtvYGT5KVxSUxVeB8klOrHkCO16/lZ1Fc+3RlNTeXGRwA/8dv1aAZrs
         JPD2DII9dG7NVlHhKCg5lSMt00h5ywQz3e/sTV+TPxnSakzYBpxl4HpI1Bb+UOpwxIHb
         vVEDOwyzLNLjatyHLYwDJNGh3oZ/NjLc6rFQQNpe8RgGV+b7lxWpBVlHO6JVfJRWHEUi
         Qapg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as permitted sender) smtp.mailfrom=pmenzel@molgen.mpg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ayq4fgGnz3yXmLP2V2QgrlvoHwuATUVm84FKl0W3wA=;
        b=ODNuSrEbymhSpxSoomG4G4AFF+xmVISHWbOeqXbSHYttb93HWv3/SrTNaL6LGJjp82
         go2tm5t2+7numHbbrAL3Sbx1Yc3LgLiA0g4iVtdjSHO6DlUp1BlOR6T2Whti/ZONc6wZ
         hCDfmn+r1sCCQ4pT6MrMcw4v8AcpxvMhDYkXxkz/jQzLVZu2XyHB6EjuPEEeOMRw7fKb
         rP7Zde8Nt2gzjtKkGxYLQmrtu+zfh/vdGk6xe35+UwFVXuGqOUENB8Yc16rmmXWdi4Vs
         gmfZdwXSPVmPOxkS9c9D9iAM5t+HEQYNwAvxyLyDOjl+K+NmKBaYBG970kQ3HmJPxDhl
         kSJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4ayq4fgGnz3yXmLP2V2QgrlvoHwuATUVm84FKl0W3wA=;
        b=LiFzFoDkllYLg9TYi1jjXJsK50Jpwn2sVRQfQhp33lKRzVnaxyy/i2AeJNpNM0BMlk
         Wil6YaQ7X/uUXL2ghGnKB82xxJvBmp91f5vHu9uI/wUjsas7CO2J5q+EDMqHrUgDtVGj
         pKqcOOpJon+jd5sXtq23f/o3FO50/e6J5bwnuJ9b75L36cEvTRw03eQwHVCvx+UrTZLj
         xKp5yT30WZ/1cssUlQO4JCR40MNV9VUihbHdxQkbl5DNe3Ow0z5f/EsHNzBIDsaa7ryH
         EqAsKAvEdLG+n9KOKlT5fqQ4w14/OwA2ctZDgIRQ3HYp5zXQ+0c6piuJoOew51bvML/W
         BVbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FlSAMPVbeF/ynF/1qhmEKooIvqfW5qRPK7ZGzsHFM4HtfAFl0
	bQPstETsaiIcKR9ychntxOY=
X-Google-Smtp-Source: ABdhPJwcAhENlXnWkP4/qHRoCgkkwrBOlTv/HwCywX8ofg9cfOHct3OwTv95Yc0wpzxRoFwrA31MnQ==
X-Received: by 2002:a2e:7216:: with SMTP id n22mr2095985ljc.6.1594729006499;
        Tue, 14 Jul 2020 05:16:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9190:: with SMTP id f16ls3833386ljg.11.gmail; Tue, 14
 Jul 2020 05:16:46 -0700 (PDT)
X-Received: by 2002:a2e:81d5:: with SMTP id s21mr2284001ljg.362.1594729006030;
        Tue, 14 Jul 2020 05:16:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594729006; cv=none;
        d=google.com; s=arc-20160816;
        b=t1FMvIhGjCLuc7UxNLPZPGSPxmfaI/PYKsaNsBKqvg4d2mRhT8frEVFvAFKTyQBXXw
         vVmSE+Pb63oOBWSmiTgD3askyM73tQ+I1v81/1KdKfOODkpSL7QIhmgdSBZW3xorqYMC
         l/RRLP9DuEJRiWLIEZzQx3JKRUUwSJQcvUnCLQO7ed6xFyjgaFjqz3BcbExIayBHiKwY
         E017H2rUD3jg/aAWyNeCJFOytggxvPH435YirJeQog6kGbLNYtPPxCHngUzBjZmHLlPI
         iBToCMZqGY6iv+nGWkn9u0RV4RYSnYj71Ga1TnchvtFoP6n7Bodx/FPzSTdw6ArbRMWK
         XOzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=wfK3xdqxWPIrcBiLcQXc1UCurpc9F1sERgRxI1Y1qrc=;
        b=qaNNh70BNNZGuvn2XaSMVh/ghKWPwrAyoWXzDCAcyxXqGGzZfFKrP8p9Cg5mIOlG5f
         gxyLtHcU2mONlF7CghvveFUDi2e3HYmbY7P5n3MGSkgxL2nEBBxJKgPcA8tFOxxXVFYk
         Ssb8UwhYGjPB6xv4VThZM8+i+FtQjZ3KpiS4aJ3tO4p72prSAzHTFh69NhWglrNpTtYS
         NNo/Z3epNLJ3AYReyDjlxaZEzHA/mVkWYr7lB/evxRnf2XLM+lhgTf9eOxuIkE7zjRM4
         1n+UuRJW0nNoFeN1smgospykBllQnRfeGv6F/8N5iimiAFFrg0Zt9YiG/L02QdenyNph
         Xclg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as permitted sender) smtp.mailfrom=pmenzel@molgen.mpg.de
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de. [141.14.17.11])
        by gmr-mx.google.com with ESMTPS id p10si487125ljj.7.2020.07.14.05.16.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 05:16:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as permitted sender) client-ip=141.14.17.11;
Received: from [192.168.0.4] (ip5f5af29b.dynamic.kabel-deutschland.de [95.90.242.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: pmenzel)
	by mx.molgen.mpg.de (Postfix) with ESMTPSA id B7E0220643C4C;
	Tue, 14 Jul 2020 14:16:44 +0200 (CEST)
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kbuild <linux-kbuild@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
 x86@kernel.org
References: <20200624203200.78870-1-samitolvanen@google.com>
 <671d8923-ed43-4600-2628-33ae7cb82ccb@molgen.mpg.de>
 <CABCJKuedpxAqndgL=jHT22KtjnLkb1dsYaM6hQYyhqrWjkEe6A@mail.gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <2ac9e722-949b-aa92-3553-df1bf69bf9e5@molgen.mpg.de>
Date: Tue, 14 Jul 2020 14:16:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CABCJKuedpxAqndgL=jHT22KtjnLkb1dsYaM6hQYyhqrWjkEe6A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pmenzel@molgen.mpg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as
 permitted sender) smtp.mailfrom=pmenzel@molgen.mpg.de
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

Dear Sami,


Am 13.07.20 um 01:34 schrieb Sami Tolvanen:
> On Sat, Jul 11, 2020 at 9:32 AM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>> Thank you very much for sending these changes.
>>
>> Do you have a branch, where your current work can be pulled from? Your
>> branch on GitHub [1] seems 15 months old.
> 
> The clang-lto branch is rebased regularly on top of Linus' tree.
> GitHub just looks at the commit date of the last commit in the tree,
> which isn't all that informative.

Thank you for clearing this up, and sorry for not checking myself.

>> Out of curiosity, I applied the changes, allowed the selection for i386
>> (x86), and with Clang 1:11~++20200701093119+ffee8040534-1~exp1 from
>> Debian experimental, it failed with `Invalid absolute R_386_32
>> relocation: KERNEL_PAGES`:
> 
> I haven't looked at getting this to work on i386, which is why we only
> select ARCH_SUPPORTS_LTO for x86_64. I would expect there to be a few
> issues to address.
> 
>>>    arch/x86/tools/relocs vmlinux > arch/x86/boot/compressed/vmlinux.relocs;arch/x86/tools/relocs --abs-relocs vmlinux
>>> Invalid absolute R_386_32 relocation: KERNEL_PAGES
> 
> KERNEL_PAGES looks like a constant, so it's probably safe to ignore
> the absolute relocation in tools/relocs.c.

Thank you for pointing me to the right direction. I am happy to report, 
that with the diff below (no idea to what list to add the string), Linux 
5.8-rc5 with the LLVM/Clang/LTO patches on top, builds and boots on the 
ASRock E350M1.

```
diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index 8f3bf34840cef..e91af127ed3c0 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -79,6 +79,7 @@ static const char * const 
sym_regex_kernel[S_NSYMTYPES] = {
         "__end_rodata_hpage_align|"
  #endif
         "__vvar_page|"
+       "KERNEL_PAGES|"
         "_end)$"
  };
```


Kind regards,

Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2ac9e722-949b-aa92-3553-df1bf69bf9e5%40molgen.mpg.de.
