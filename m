Return-Path: <clang-built-linux+bncBAABBE4E5D7AKGQEI6R3PBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A73D2DC07A
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 13:48:20 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id o12sf9349017wrq.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 04:48:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608122900; cv=pass;
        d=google.com; s=arc-20160816;
        b=JcsRH9N61uOuTQbd3oRUy9Q2Pd4J4F7YR3V5axXXTJepElXZSWIYyzFvpP8e2436T+
         AtHzTYXwuDBZK7NNrsChYLlgHQr1L78dbQpO1/bbZR/GR/KkGYFacjbQICPLdJSOUncn
         JNdh2gkKAulfGe52uSpSjL7giCF88gbyVKA1wOAPtx9xk0oQriL42GodVJmmnP+c3nja
         UxXiriogbltadA5kEbao70v2wRd323/WSf8uIvPSYyYiybUXt7mCtp4wfj7ucmjWK8k9
         OrWgKzmjTNDnqycuIYJ0w7nMzWK8j/Z+elVuPfCHG7d830zsU84QCSP6pzVD4P53WTc4
         uG1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iyV2WR18tswI6QpE2eQO+E3YuQd0pb7off4mA3Spxqo=;
        b=bucco2m19pXsfHJq3Zm7ltB0w71WSae8lvjVg0OumZ8PsJ6nHxWSr+8WcRoKYoYeK3
         J+oAef8PVwrOcxV2QrHXcb392KIiDwFg8BeDWyd3n+7Yws9gohFcVoO59Wlsl33VEUBw
         EEh4U7uI+sTIgZHxfxZxGiIv9DnXjTKABck9dQD5y7kg3tF9BYc5P+Nx0K5vsqcxQL6n
         n6pG8wTMCG/S0oSGnqc6t/hpvcML8gzH5cJKVu229ICNAZcadv2a0icgKYYI6BQLYIfr
         DChm8Do/IHhpOjTs7EMHjV7PZOihK1XmmNHbPudW3MBgc+/3yaCSLBId8z/7FvJAbg04
         uY+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=mbenes@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iyV2WR18tswI6QpE2eQO+E3YuQd0pb7off4mA3Spxqo=;
        b=rT4lLXspOBmI6+Gf2eZ5vdCkdm3LMHqlrcrS7+MT7x7xEUfNbm7FQodU7sfVnRjo/7
         VjWe+omyJpqTVMrzOawvZLLdS4PRb1J+wbGK96Ruka3qfO9/J5ejyIT3kFIUraWbaIo3
         airKfVk61J4vRQHZGhEvJWOw5CckrAkvtYWRLmS4Rtvl+OepP6+/GFPTlCXtKwoaeHTu
         1KSGadsIv4Gi5ZiWGajKX5HGkP3pA+LvwItpiJaTW9RKWcuHKps6RvxIfJ7qalaDzrrd
         /+GviMDU9O9eJutCfKZfvR2nAXOagb79g9Ha9GUTzRmsHg1TewZLualGjRn56MQDCS8Z
         Tg1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iyV2WR18tswI6QpE2eQO+E3YuQd0pb7off4mA3Spxqo=;
        b=fwRACdNj2bQxVK0EZeM4MvRFOFrs3EnTJGpi6CVOC3m1tmneuZ6YcNTp1vkIA9FUm3
         QynaZ4zhwrXgrfg+0pzt1QB7BAI/dokziPJt7cidAq4VIACUXr1/sEHNzf0wj46yy3cY
         GUMPA2fbw+bSORzhWz4FZo9s6gG9mbHuAl2r5qriEmG9owrYjq+BNQyGqG7qumyTW8OB
         +jgUqMwJb3xirJBnRftjq2pxM7Z2zBSvx2FDzlc7sYWtL4s3F74Zk6NlnBU9I73Q8YPM
         x4f+2OWjgxoN0XdZ7jgrCXoJWZleVFKTS3BlpHXSgJ7TJnBlY68h3SB3zF92STp5loJp
         mJ0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ONOV6XeidxuDaCya4R4XSCj8FOkeftxDzmGtlsYkjTFSdbRbM
	wC9zl8SPD4lWDh/FVV9au6I=
X-Google-Smtp-Source: ABdhPJwOIoWib/xHN2C5S5PhrWfUuHq7GlfeXKLIYAwVtUu7PtpqjMFtLwGnCLgeVnxgEzO+yQcueg==
X-Received: by 2002:a05:6000:1290:: with SMTP id f16mr25275744wrx.298.1608122900159;
        Wed, 16 Dec 2020 04:48:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2094:: with SMTP id g142ls1325177wmg.2.gmail; Wed, 16
 Dec 2020 04:48:19 -0800 (PST)
X-Received: by 2002:a7b:c7d8:: with SMTP id z24mr3205475wmk.1.1608122899371;
        Wed, 16 Dec 2020 04:48:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608122899; cv=none;
        d=google.com; s=arc-20160816;
        b=tKbdB2QLvW6a8aQX1jaE9p4Q8bbZZiohIWGAMjcXHDAgJEFLnqPjo/d/QH2inRNWBv
         7C32ubvV3zu9d6aYaZha0Fhe1yvtl5MVEDa4ccfmsL8jq/mewvXx73qV0LlpWifeY35D
         pAZ65wzjplM9uisliSQpuyeBxd1qQ00sUb445j+rWFZ3huv2k8yIVyEp9S2JGcx2JL9n
         rZxCnXVL2+6FZYjjWP9o2XxPhgsKe5FHYRf5OpBKZtrN1WJMAd0j3RDG25ZN5+kGqMN5
         yKNzBJYtu5+P+p/CNVsFHSL4vlZTzCg7XOT9Imhz13YFBkPJFaNyrOGexj9WBgoRm3et
         cD0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=41Ape7aDdsys7nz9djlyn2cUOb9+j92p52Ubu44eTtY=;
        b=Oou9070vxcl+8IkEhkaoaxJVOERFz4sKMEFTgXl3/oUqrJqfZ8l+PWy0CBukrQrGt+
         ppzPx81GqjQqvZbVeNmVF9+mP2jPicc63N8ujc/ewrtBHOp5GQs0gmFgltpnsECraVAZ
         3YaXcJV6oofUa1LljnLP3Lg/ExoSuVihkHLBzoPl/HaZaGNOfTY7chyGfGhlXVyvYYAB
         5VPEiJaOHIQKBSq6FusP/EFWs5g5VgWwEBn14CFO4MA1Tn5b3FVzlHqJ4unkOrQcXTjp
         aB/isgRjN8YlVrPsQ+v1ujH2zAFjEoxhwrQonW4y0SRDMKtoOQOmM+/9cqjak0HeWnIj
         EyGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=mbenes@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id v16si93795wmh.1.2020.12.16.04.48.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Dec 2020 04:48:19 -0800 (PST)
Received-SPF: pass (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id DF734AC91;
	Wed, 16 Dec 2020 12:48:18 +0000 (UTC)
Date: Wed, 16 Dec 2020 13:48:18 +0100 (CET)
From: Miroslav Benes <mbenes@suse.cz>
To: Josh Poimboeuf <jpoimboe@redhat.com>
cc: x86@kernel.org, linux-kernel@vger.kernel.org, 
    Peter Zijlstra <peterz@infradead.org>, clang-built-linux@googlegroups.com, 
    Arnd Bergmann <arnd@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] objtool: Fix seg fault with Clang non-section symbols
In-Reply-To: <ba6b6c0f0dd5acbba66e403955a967d9fdd1726a.1607983452.git.jpoimboe@redhat.com>
Message-ID: <alpine.LSU.2.21.2012161347400.24446@pobox.suse.cz>
References: <ba6b6c0f0dd5acbba66e403955a967d9fdd1726a.1607983452.git.jpoimboe@redhat.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mbenes@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=mbenes@suse.cz
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

On Mon, 14 Dec 2020, Josh Poimboeuf wrote:

> The Clang assembler likes to strip section symbols, which means objtool
> can't reference some text code by its section.  This confuses objtool
> greatly, causing it to seg fault.
> 
> The fix is similar to what was done before, for ORC reloc generation:
> 
>   e81e07244325 ("objtool: Support Clang non-section symbols in ORC generation")
> 
> Factor out that code into a common helper and use it for static call
> reloc generation as well.
> 
> Reported-by: Arnd Bergmann <arnd@kernel.org>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1207
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>

Reviewed-by: Miroslav Benes <mbenes@suse.cz>

M

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LSU.2.21.2012161347400.24446%40pobox.suse.cz.
