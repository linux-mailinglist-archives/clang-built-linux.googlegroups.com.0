Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBTEPT6EQMGQECPVYKPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8E63F8C89
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 18:56:48 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id bb27-20020a056122221bb0290280d80248d5sf592473vkb.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 09:56:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629997006; cv=pass;
        d=google.com; s=arc-20160816;
        b=Heig11pXvm1Wa75OpYjEFpxnF36kBUmsKJyd/YPI4vT56CmhB+NHEQw7yIUXUOw98I
         i6OxkTMReDr1GXyEva2gmL15DEES5Lbx2wffr8YlX18xBepaYAdda/p6Un7mlJyqaZGp
         /fks3lg44MDSq/B+oB2vymXkjMH+l81yE0x6Y+VejFjkUGhN65tuOVNXZ81nVNyCawMX
         aIKrOoXTzVCyfBT+C0XeBxtowUFtDgvb/uQdj83JNMgNokohp7cR/LwWN7dx1HoasviL
         3tmc72kDHnkWLeJfc+eRG2u24jmgbNtOPREpD2TOR+CbNcvxL6YV4zafgQssIIHo97MZ
         GnXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=+ltIphabxuZs1wSXAz7zMwJhG/H8xyowvwY9JZCil9w=;
        b=ZUhas6HEAfF1witOBgCt1IFA0NZPmcpk6kTDM8Hn/kZxAjBpi4vN3Mnz9Gxmnn+Nbq
         xSv6KnKF6hACqkygNHGpbqZdsvQFa1s3QtrG0fdo/QppPokXdFLPIVfEoX5FuiOgp8o4
         rn7pKdMY/MZ+sLXVWRj8M/QYL26wnaaI0RACxMnRfQ3hvo+3q+unoqxR0EC97lAyvBJ3
         OeeM5Y4EDx0128eV8ry7k1p+DTdGAZ838rJMWoD7nNUZGNX41odoZnsM5SBt1eXmq2EZ
         wfk+z2LWbsTLSf1Lh/fPsbm0naNlYgnwaEARnqPD+6MYrcynOwZZqMqVOF/JIOBV5DUk
         xu2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mR4cTYFp;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+ltIphabxuZs1wSXAz7zMwJhG/H8xyowvwY9JZCil9w=;
        b=JrRtMK06xejLinV4GaO4dvsLZUKShOT81JX9TRgG2h756PWgXR4QfBUMfLu/Sj3g2c
         ioLZaRLj9gHn0IyI/qKmg6C14TzsmI+WAuLkP7lL/EhYBHegZFATNwMw79ipVVK7zP9v
         EDm01qN/MgtwtRFs9ZM/Ld6cbHx84tKlcz3LGraO8cTUqw7BckRtlJDd4jGU1uf+yF7V
         vx1otjBs3fdS8ayx3+d/BqdM6VGXsYF/shxch2q9OwbkzhElPr6rd+y0OM321a1CHYhA
         vbKc4g/LU/mjSwD9ugasMG/e7WYCKYLVFrYPII3hMOFmwlmR+kfs4cuaqNFEcCp3tn3X
         7LJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+ltIphabxuZs1wSXAz7zMwJhG/H8xyowvwY9JZCil9w=;
        b=osWzrvzRj1xzIoerIRlQXvefFZZVRlQWeUEvZxz5VZi4YB6tcsKNwnWO6QcX0ZUrNR
         cTtSJ3C5/4/K+2Hf6eM8Kdebg+lGcq9JejkmUf5DyawhumCPzm89HadUC/xe/qvloWm+
         dHpQ3nl3UO2iEBI0kvZUnLcPlisBQnNdnOoM77PsAoZsMIMyHjqGQ3TmDo65XGGTQa7f
         o9Y/gWcAb/cHWLyytx/Mw6CE0xaBOKuzmjJ0Hk+iuilcp6+HK48RQ0Ikj6TqlVEL5Y1m
         XZ4xpxERB5RoMXoYAiL2Sm27SQM3Lt7rVtcIK5jpL9oU9v422hDKxT8P3vte2lBWN06m
         tCaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317RGjiZAGrgEqZr4aS27QH/NSz0cLD3/d8IHJtNiOmZ+QqaJ45
	giRhnLsSeJlLQLKfRh/PAws=
X-Google-Smtp-Source: ABdhPJw12ZKeCMCflc45t7V0by4DJgIokybeAfwdVUXEKaB3+l+Pjz93DllZOt61m7N1AJbookuwDQ==
X-Received: by 2002:a67:ee86:: with SMTP id n6mr3671666vsp.5.1629997005033;
        Thu, 26 Aug 2021 09:56:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:48a6:: with SMTP id x35ls699517uac.2.gmail; Thu, 26 Aug
 2021 09:56:44 -0700 (PDT)
X-Received: by 2002:ab0:1444:: with SMTP id c4mr3296685uae.58.1629997004464;
        Thu, 26 Aug 2021 09:56:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629997004; cv=none;
        d=google.com; s=arc-20160816;
        b=SOT2He9L95++f3glOkGn/QIYMA9NSLeDyrPbUQQWRgCueVVLLI4yanQ1vJ2gKCM3RY
         ikydEz65vvOnw4FjA6C7bdYyGJBHybKng+XKAvqykmPmiH9sFH7NXbRy32WCMIN8mb2J
         o2N1S9Y7THEFiip5ZE/ch5q3znJF8HNtZHP4l/CKWNmpsf9eZAmIMeludTAfRAgXAMbp
         T7tYIAzcM3URLmY2/QtpUykxp8hIqFYkAbayeE+ZQ/uFMhVWZTkLuBZw5gKGJG5rdb/J
         BaxmN61vRoVqeUARnG35eHf5bJMmyLa/C4NU0+XIJVd4k8k7tDH9qkcNW3RHXBTaUsuq
         tUjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3Z5JFg8kbClCDmQNYIfaVWsKqOwxZJRQZdLBVGI7ihM=;
        b=zAZjqLy9cxHjcEuLqPTQDUO6+rVkengKyItvTDk836iSvp6vlz2tRGe2aROKWvxIdc
         yKdNFo6Jq568jRwqgHKJF4ZTAYQVHTCfUioGKsgdrORguAdvN6rGsHv+vrvDiVvFEdx6
         MLgVUERrBxekBQ2SK2YfL6ZerSjz+Afs2YSjJPbZ8ZhCyT4OFV9gtj1PAinW98gb1zMZ
         zqPlW/w3LgI1rsdpnHZSYaTfW7ZfMlCUGVeqf5gd2yDPPhco0sDfg/Twi9cJO7eRMROm
         nB3Gl9cssCrcca9iLVd/1iQQDbWaXAbvv5hYLrG5evr2DYX7omUMZHPCCQFtKpBVqQ/S
         xQ9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mR4cTYFp;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m184si272727vkg.1.2021.08.26.09.56.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Aug 2021 09:56:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DCD6760F5C;
	Thu, 26 Aug 2021 16:56:42 +0000 (UTC)
Subject: Re: [PATCH v2 08/14] x86/extable: Do not mark exception callback as
 CFI
To: Sami Tolvanen <samitolvanen@google.com>, x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210823171318.2801096-1-samitolvanen@google.com>
 <20210823171318.2801096-9-samitolvanen@google.com>
From: Andy Lutomirski <luto@kernel.org>
Message-ID: <e33bdfc8-6de9-0e91-eec6-39e6aca61758@kernel.org>
Date: Thu, 26 Aug 2021 09:56:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210823171318.2801096-9-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mR4cTYFp;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 8/23/21 10:13 AM, Sami Tolvanen wrote:
> From: Kees Cook <keescook@chromium.org>
> 
> The exception table entries are constructed out of a relative offset
> and point to the actual function, not the CFI table entry. For now,
> just mark the caller as not checking CFI

Does this *mark* the caller as not checking CFI or does it actually make
the caller stop checking CFI?  What are the semantics of a __nocfi function?

> The failure is most visible
> at boot with CONFIG_DEBUG_RODATA_TEST=y.

What's the failure?

> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/x86/mm/extable.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/x86/mm/extable.c b/arch/x86/mm/extable.c
> index e1664e9f969c..d150d4d12d53 100644
> --- a/arch/x86/mm/extable.c
> +++ b/arch/x86/mm/extable.c
> @@ -155,6 +155,7 @@ enum handler_type ex_get_fault_handler_type(unsigned long ip)
>  		return EX_HANDLER_OTHER;
>  }
>  
> +__nocfi
>  int fixup_exception(struct pt_regs *regs, int trapnr, unsigned long error_code,
>  		    unsigned long fault_addr)
>  {
> 


This at least needs a comment explaining what's going on.  But maybe it
could be fixed better by either having the extable entry resolve to the
magic CFI table entry (can this be done?) or by marking the actual
indirect call or the type of the variable through which the call is done
as being a non-CFI call.

--Andy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e33bdfc8-6de9-0e91-eec6-39e6aca61758%40kernel.org.
