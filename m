Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX5E5D3QKGQEV2R75IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCC720D004
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 18:10:08 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id y9sf397826plr.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 09:10:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593447007; cv=pass;
        d=google.com; s=arc-20160816;
        b=tbvH7rzglXfvg3DD1bispZtJ3vA3n5k16rY+1QONt2KearwzXrc9umWhq8HstLhORI
         4U2mPpre8Kq0ogJdUKFc6No7CoB6qeCNg38+94N+Fwbw0ev6uQm3YqK8tgoxuZn98j1A
         yumbcBE+ZIFrTP120GgfI74aZ/J7RDDg2EKQLGk+zPfKebLR1MuA4rMCt8pui6JNJOQl
         zf4COcboWej35fvAdMIIumM/G+YrVOnlnLb0LXwOVLVSga9CAMpmr9bxP1dR8KXmDfL8
         mDK/pnsxzbjg7w0kmSJTyUL8JvjptQL9WIxx7H+d9t253xk6eZJqhJHcgbQQ5xWTYUpg
         MjhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KVzr9dONaByuCIn8hsR6+rnF6bs2ClWICd/ILJvyFfk=;
        b=Bsej9yuiweg/jTxu22SsJFP/3tftEdMhIGwnyjdNi6ur+fUMzGTPxPNnb2VvLppsUA
         p7BQuesQbpnPrZKeEQsLyxBL0l8k7hZgJ8C7QTUWQXVz6s8REJ1M7QpwXoRYbniDBfz6
         ehDers7JCIKqoexLNWt0DcGQngd5cFYuWsxsz04go3x4/6fmRX4wZLdWE+Ybq6N8pwfZ
         5pmKkkXOFuHz0lssyz1bgwklMCPGXnzVvpHtiT5XGAudq1dffhj/S/bIiyV+W1t8V6uw
         pu8ZnNtGpAOXwhlLd8q94hC5APIMOmir/RF0RkkjbvkJ2doUy9AUqBStojBpgRveD6YV
         dsPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=i+9UP96B;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KVzr9dONaByuCIn8hsR6+rnF6bs2ClWICd/ILJvyFfk=;
        b=jyC+nucohnX8oUJgUe6prVBh9QUwqz6T8UyUhTVtAVdZ/cREeJH04Hbopet7pprcyf
         e3EJRzLic+M4qEm5NhVKyCaVat7M1vOSI9jT6C+Xwmj8Hb1LJetIhgagQqnt9vIK5+ga
         8LwJhgqergwbhpVFjuEVK1gF20HTSkWJb5OBDPfruaw7RbnmPeruD+o1bZiZdUMykWPN
         3ncC0zVg5GG99F7wlCkEY4Yc7SGgg/BFzcYbaNwDkX5bxwFr8cahp0sfHf927S7Q1WJu
         tYU/Cn8vXSVbL62Qt4TB/ugMY4rtanFq5e27Mzo+P0Om1qWVy1xsrYoONEEi9ANVWgV4
         1hsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KVzr9dONaByuCIn8hsR6+rnF6bs2ClWICd/ILJvyFfk=;
        b=c0DP12cu13dk/1px4WULemhmJ+FF+nrvJp+lQaabOze6DKjxqHmI0WZzPmPN7yo0jQ
         uiRX24CpPLFP+GXly6onOOfWeFLm8RWvm4BWXbluWy4kdAR1WVfQ/iFnedFFq+ebQfLz
         kafGD6vYVwlaCsDTRyLcITtpcfNBBnBcAJF6PWCoMKQKlXQL88aWF76dyyETez6k/dHn
         cIliJhf41MNk+WR2tKz3PCXkwy6TfYKAuRJHgpsLpKafTJkcjjyBuenqLBSXGnLhzFMB
         ltXR/OzlYq04A/lJzGk1aS82EVXGW2EgKkmgReBk9lIzD5YuRbhJjCT9f6+0GtuYp7Qu
         JrYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MSfgaCZb7P0k5QAQkToLiasjrKIAxq3OBqYZheQqqPo9tG6+T
	pzgCgTi9hIEpBY6mX0DvMuM=
X-Google-Smtp-Source: ABdhPJwhdZ7Kr96SJ/nFvfp9JA2OWMMFJ8uc1URzm44vCnvVZqrAdipi1uGEPc8vM1NJFIwiOcVgUA==
X-Received: by 2002:a17:90b:1c12:: with SMTP id oc18mr16977573pjb.160.1593447007108;
        Mon, 29 Jun 2020 09:10:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c0d:: with SMTP id j13ls4671056pga.8.gmail; Mon, 29 Jun
 2020 09:10:06 -0700 (PDT)
X-Received: by 2002:a62:1d8e:: with SMTP id d136mr14968388pfd.323.1593447006669;
        Mon, 29 Jun 2020 09:10:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593447006; cv=none;
        d=google.com; s=arc-20160816;
        b=o1KH+bYBiDvg8QqqQcc9B2sal8KzxM6HmbzYJfKGtdqLOAYB98kPpRYwaSiqulQS52
         ncEDLpI6+RXAKWQT+pB/IQs/dy7YubrhM920G9UZ45GVPNCPiTCj3AfAPyGkgfZW3BhM
         jtE7agI0ihDjEUYtVDUlBssFPZa+UMWzNUfrUgMcQiIVlWFEnBKpWX2qjoSh5QNDo1Ht
         aQBwS4J7jig3qz8necDxM8f5u5kcmu8Ml7sT9ANqWShnM9k4rx1wIjPUs0y+kyZDaMWb
         0oIVhwI0Xl+WpScZOS/imi/8GntYP3olqh5X0qZ3jZMqCYKmalHFh+1cf3BFlKw7Ca35
         MYFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VLeKruvw8xS/1C0BGsgxQCKuNobKaryrVDfkNcFoTKw=;
        b=0mqk/iojCheEreWSimX/2cTb7pJ3QpIbEiMStzG08/9sCzRzwjjL8MHkIEqQHhHTts
         N6M5UDGNX7BGCoJfvA3lTao18DoQMEEGjXIzQxn80Hjh77SoXRYjCsB3Gj+FGrnkyz2y
         ErOiJE80tZvkUxIJ7XVV4cwaWJjmdPdp385B2/QlEvVqwn81iD2L8tPqQFaBlxEFFrHt
         itZROEQEmoViUIY+D9DGsE5valY+L3mq8MBte3b57kuejSj3BzguWAD/I+2LfmJbEFoc
         V15CqqhBcFukemvEUKh6Q6eTBDHb4fBlXWgacZGt/ZJxmxEOZCv/Msyxo4ZtOWnCOG1B
         byPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=i+9UP96B;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v187si21744pfc.4.2020.06.29.09.10.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 09:10:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id o13so5546676pgf.0
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 09:10:06 -0700 (PDT)
X-Received: by 2002:a65:5649:: with SMTP id m9mr10671287pgs.279.1593447006373;
        Mon, 29 Jun 2020 09:10:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j21sm176656pfa.133.2020.06.29.09.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 09:10:05 -0700 (PDT)
Date: Mon, 29 Jun 2020 09:10:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/7] x86/boot/compressed: Move .got.plt entries out of
 the .got section
Message-ID: <202006290909.F79ED275C@keescook>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-2-nivedita@alum.mit.edu>
 <202006290846.5A5C76A4D7@keescook>
 <20200629155011.GA900899@rani.riverdale.lan>
 <CAMj1kXH1Fx3c4fZRVgNPeXnPFbHWVhgywU0Jvu65=wBaR_5yjA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXH1Fx3c4fZRVgNPeXnPFbHWVhgywU0Jvu65=wBaR_5yjA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=i+9UP96B;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 29, 2020 at 05:51:00PM +0200, Ard Biesheuvel wrote:
> On Mon, 29 Jun 2020 at 17:50, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Mon, Jun 29, 2020 at 08:48:05AM -0700, Kees Cook wrote:
> > > On Mon, Jun 29, 2020 at 10:09:22AM -0400, Arvind Sankar wrote:
> > >
> > > This is also being done on arm64, and the section was specified slightly
> > > differently (with INFO) which maybe should be done here too?
> >
> > I was actually just about to email you to ask what that INFO is for :)
> > What does it do?
> >
> 
> It makes the section non-allocatable, so it is dropped from the final image

i.e. takes no disk space, but the ASSERT can still be done.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290909.F79ED275C%40keescook.
