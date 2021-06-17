Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBEFHVWDAMGQEAV6EQ7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C5F3AB537
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 15:52:19 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id y7-20020aa7ce870000b029038fd7cdcf3bsf1564211edv.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 06:52:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623937937; cv=pass;
        d=google.com; s=arc-20160816;
        b=jPKOv4rCBobCDNHpySKIWtJn3VDxxZJuIj6EE9vfxn9RKDklrgwxfLHUXqO7GLF4T1
         gApkhQ/+vhL3ebkgh1ODvZMUHogU3a3I98gcuT4Sr1tLTBVKVpMJwWEstzg6VrpKDO5X
         NClmq1Iy5ULb49ByoGFZTDt0SFI02YnUwcPe2UNZaZp942xawG7VzJqLHESWqKyH/IdG
         1DCOK4k5kamj/39ajJNePsRaP/gm+6BXnNZQZqeyoqWiuQZkMp4pylrgXqiqtnKl3K9f
         W/GTMtLmyVZL5lyCDMPogHkmqPcSAUdRGILcQAjoWAiFezUbTfUbbzLytZRtQU8X7wQT
         sEow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yNeaxiCVvIPl8DBHT5XfXFS535ETrKolv7i+9vCzXng=;
        b=SrDR3XF+X/O6dq2Jfok+8JpkgO589RmW/CmzFL+jjjlF+s+FNILvAe4mE/YNkbgcSJ
         g5TgQNsQ/8hKmvLBXE3AWws5RCnqLSkk5h+rPLm9fguMyK+VCZX9EeIhGPdiwgw6kOs1
         BjZEX1WhLfhk82pNAOp2YNGF9bpiP/gfab55KgYQ+BD1AHdFtcTBC5MV07u11EdZo+jo
         DCtnfnT6wvCYVxTqyD4PdtaEBPXC8A58LOb9HSvbwophPBNc2Y+nc64gGiElNElFDvQi
         MZkMAVfG+aiRpu8U03Yfu2yJm+iIABuzsOGukBA2wPzhnSTcSy/evSoij82Gf+pRfOZi
         v1zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=e2ZRYQbe;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yNeaxiCVvIPl8DBHT5XfXFS535ETrKolv7i+9vCzXng=;
        b=Njo4TER8KrH2qypQy+6dB07lrTj4wmGOJK+wPzLfgkdv+8pSi/ZrzoYS/XMHV0K9Hr
         8NGapz8yYda7RLcaj4YXSwd/P3ngkX0MOf99CjzEXHH9YThaUgvqZuubJQWFb9W+gI9u
         /DZALcgtBXo2tez4CKZQg/AIcfExntOk74awksNibM9JOPUh3Q9DRvb5BPZAynGuBe7i
         BfWCI8nPv0pz8Cg22kvuC9hj7KB4hlFdCJGtZ7WsjuzBIYhvxQJx4ukqCs0jUOJxJ8vj
         wFK0FL22D10vElPmveUdH0gzJ5S9R3LPC8CQJ1x5RuAX9CTJBdum8Euh7J5gZ2nPd3FM
         DHJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yNeaxiCVvIPl8DBHT5XfXFS535ETrKolv7i+9vCzXng=;
        b=hgyMOhEszZPz5u+OTu5Q42JToF6SZ8A+D7kv3S9zswO6ni22FA9c9wl9jArYsqLwp0
         8IZ37nb/XqyV75P5Uv7uVlWMW/eU8PUA55hygOyFQsadkWpHt6J+BDoyabQhz9nUDyQ3
         qNr8jR/1vHk6Bf2bU/eEdUaBv4mBszp5H0UlqibgnhWLOBeUSgmdbgonKWA5eifCnX/7
         8bRgEsj/leQZNapeY/RdX2l1AsA/l/7tvwz1CW4lEu+Ksp5ykKjaf55GhGvapGNL44Ka
         uwTTtQ0tB2PKjl6VyaRms3rUbTU/WTlWKx2iNYhfjRrL2L+EuDT6T8CR17qcz89jC9GL
         c+QQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zECJM00NwwZ21poxa2C0O0Kg9b25huxCO1X26f9DAuM4r8OWk
	cTG86czJKhixcThB4V83eDs=
X-Google-Smtp-Source: ABdhPJwLJXv7DoS6mQfOfCqSDZ5HWdwFGphvYjyi3Dnb3Wws1qZ/sJoVF/NIUBQrVeLQartk4RsM7g==
X-Received: by 2002:a05:6402:c03:: with SMTP id co3mr5774957edb.21.1623937936747;
        Thu, 17 Jun 2021 06:52:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c14b:: with SMTP id r11ls1193650edp.3.gmail; Thu, 17 Jun
 2021 06:52:15 -0700 (PDT)
X-Received: by 2002:aa7:db16:: with SMTP id t22mr6634757eds.49.1623937935780;
        Thu, 17 Jun 2021 06:52:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623937935; cv=none;
        d=google.com; s=arc-20160816;
        b=Vrl9UR0HMATMzw8uZ4L5kl4EWBWXVssrA+kdiRpFA5/HsDBQi3MEx+Mo8Aw6QsuAHJ
         POxtFeb+thOPvu2wkx9hSg+PBZ8COWgVCDUZLd9cu7OhGWMDiE47kLFeHWJi9SVL8HVi
         G6vvuAMMnWX9y5LYUqw+kFTAgoQgQ0JkNZxfA05fklbHw2mnXHHoPfPMrTXVhmXlH5PD
         wO91HE3ClK+uyNl1ZMBR7X4YgcHYeWrGD+71Dw5lOAB9jp7InjS0mFfHQMEnKqpXTNcR
         YSjivv6zznY1yyduMfuEE3I+P7CSmej+V02c5Lnv3T8AujREOjWcxvBl0o8O0I1+DDlH
         mvJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wWpwrgGiZhe98tfTjncAJgLFY4m6Azvsm8WQSDSbfDo=;
        b=AmSiZTtrJLnjthk7/XmRFJ1JQ6jrZv2Hlv6fzEFDBXP3+7F5VTUrVHgPOOS8MbeMnZ
         j+x6ZH/VjMjOgIkRWERL1/KxXq9yO9k/xI3nTZuCE/gVGTnvhAmz6AEqV59OpDM4Kt62
         wPfUOeKPBzRXf/X+5iPmpNX0qXczwEsPu1DR+S1Ty7vSICn15VFgN4OdwEsn10ydXHuw
         QShKMIrqJB6Jq6z7m7SgKktJ0RJx0r+MUlfQnHcTpMpnub7lA3f7XYmInuwCDKGfWN68
         IkzHh8cMuMU1vFS9QnsGZVXt00L3CaquhqOaqihuVIDOhVHnOKgnFFnG2KK8LnhGGUc7
         DsoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=e2ZRYQbe;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id cz2si336926edb.5.2021.06.17.06.52.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jun 2021 06:52:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltsQv-009Bek-8o; Thu, 17 Jun 2021 13:51:52 +0000
Date: Thu, 17 Jun 2021 14:51:49 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Linux-Next Mailing List <linux-next@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	lkft-triage@lists.linaro.org,
	open list <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Stephen Boyd <swboyd@chromium.org>, Jiri Olsa <jolsa@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>, Jessica Yu <jeyu@kernel.org>,
	Evan Green <evgreen@chromium.org>,
	Hsin-Yi Wang <hsinyi@chromium.org>, Petr Mladek <pmladek@suse.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Baoquan He <bhe@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@redhat.com>,
	Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
	Sasha Levin <sashal@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Vivek Goyal <vgoyal@redhat.com>, Will Deacon <will@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to
 `__compiletime_assert_342'
Message-ID: <YMtTdU2b9fI3dnFD@casper.infradead.org>
References: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
 <CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=e2ZRYQbe;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Thu, Jun 17, 2021 at 06:15:45PM +0530, Naresh Kamboju wrote:
> On Thu, 17 Jun 2021 at 17:41, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
> > x86_64-linux-gnu-ld: mm/mremap.o: in function `move_pgt_entry':
> > mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
> 
> The git bisect pointed out the first bad commit.
> 
> The first bad commit:
> commit 928cf6adc7d60c96eca760c05c1000cda061604e
> Author: Stephen Boyd <swboyd@chromium.org>
> Date:   Thu Jun 17 15:21:35 2021 +1000
>     module: add printk formats to add module build ID to stacktraces

Your git bisect probably went astray.  There's no way that commit
caused that regression.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMtTdU2b9fI3dnFD%40casper.infradead.org.
