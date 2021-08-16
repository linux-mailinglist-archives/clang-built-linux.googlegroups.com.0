Return-Path: <clang-built-linux+bncBC2ORX645YPRBTGS5KEAMGQEMLQJUVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6E33EDCD1
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:07:10 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id i186-20020a6722c30000b02902bc73413510sf3021090vsi.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 11:07:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629137228; cv=pass;
        d=google.com; s=arc-20160816;
        b=PRutwIBXiTYNYkjTIG7bCSbMkyQa5raHmEKUmho/1VB440K99wvRRyN1Ypkq2ZPON9
         By+KeV5olMZU4km6PzteBqx4vWccBaJIWLYeY+ozkHmq78J4XszJEIzHpEnwAzjIoXbY
         ZUEcE1euzmeoZvV0ryIXeCxRw09LwigDb7uqPpTwAnljEkLXSrjPwzNhwNUG0JKkZ/sf
         r58zsvbbKsTvvn2QkXdE1xxW7GUr4vmOhQENSicr3cgQSdbeEVNfU51kqRHsE3CYeI2Y
         qQkmHW5s+CKQWhdkY4UPYLrONWCesWfXkexXLMqlZBIyiVor6PLOnGGSb1Bvqbqy+Go0
         BTTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fSDyD5lpeWOtWA1xAit2XUzz9AJiCxdNtHog0ErpxiM=;
        b=wUl0reKkZM2cYErs6lgm/aASHMjTwNLCPqEx/1WpKg1nOA9H70JxWvL05GoLhZXdIY
         sqElga0viXivuu/umMT+On7PFIplSHrqVMRG9nmcWnxFkWfCgGwJSHKh6+w5iRLFX6Xj
         YdYzhR2fz/fQc8/QzKy9I696R5BNqkj319Ib5lYdvGZRsyJRHfnjIbRHaZ6ElY4+lv4s
         c4xWyL0GDVsEdIzWT+uK21XdylqFTgRs679iyifZFTsQBfTKTwvHr0zgReU4Kxe7EJ8E
         DU2vcj5pOETJBW8EzyfBM0dMpw8IyzwD8ec/T5X84plzfS/7WLyaHRHgcI4w1rbe2ufM
         R3Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VSWUay3S;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fSDyD5lpeWOtWA1xAit2XUzz9AJiCxdNtHog0ErpxiM=;
        b=TiwEIGNPKy3AT3atGjSGU6VPfw/JDPLuSfqn23m0y7j79lPk6eCW9JuXqDGvxe1m0r
         n+ZHAeFoX4d8rhfnjrZSy5nQFgiO44bxoVP9f6/HVs/ijpXmlbKBssgHCuZ/XYw4dw8X
         3AuQ1Q+f6diaDb0UipFfO7EcwKPIh4wHP86AIFDMbon02f6MTnQiufuuJSCr+S6BVVvW
         QD1o/+wwDz9zrOtTggUwg2opiMQ7AVVq1dT++71zsMilUIcLpdsk67e5KZNSn5XP3Fez
         hWaNfcDjvp48J4QYZVs75T/7o2exsPCSN2l+wB1texQUXiCRb74pNi84ydUiV48X69h0
         GsFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fSDyD5lpeWOtWA1xAit2XUzz9AJiCxdNtHog0ErpxiM=;
        b=tWNPKJMhqec2e7yrs8AzwS+fPuEG5cpXNL9yOMeuTwy3d8faA5lrqELgE5IcSIM+FG
         WVXCLdY4hnPvGW6DOMZExa5cS9jlmf9FNvEargPcwZnkOCm5iYbnpMssVd1gh/yhGG2f
         ZvMdzrLWikqSSSaOmanUdlbIrx0W8P09ZDjNcLM4QMIH1ff6VLngpocoiBZg+ysLTgAk
         BsXGkhnusbmgSUHXV7++GcNpBqgmVrfeCnzYilUGnpKQQNKH5FslQEUPzRLxLlPQ4x3R
         8SzAY4YLNhtBHYfqZQUaAuHIN7Jh4kq/eOqf1NyQzEV+OEtdq1itqjC2bT3GTlMPuvD2
         x6iA==
X-Gm-Message-State: AOAM530F1Bd8xr/qAjWalCWkjNXQV11IbqZvldM6/EPjT3MLKrXpASLP
	SKd8lKp2njVgmn+gZB4wY64=
X-Google-Smtp-Source: ABdhPJz0UxQo52vcGUtkWyPTbnrdONrYBztw7hBErC2ot7kspmiKY6Ied/ELRr09w1Gs3oA/Mt6mBw==
X-Received: by 2002:a05:6102:c06:: with SMTP id x6mr197045vss.12.1629137228830;
        Mon, 16 Aug 2021 11:07:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:2090:: with SMTP id i16ls627498vkd.4.gmail; Mon, 16
 Aug 2021 11:07:08 -0700 (PDT)
X-Received: by 2002:a1f:28c6:: with SMTP id o189mr157107vko.22.1629137228337;
        Mon, 16 Aug 2021 11:07:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629137228; cv=none;
        d=google.com; s=arc-20160816;
        b=sMEIsWLZ1OrdzVdjOB1i7CvsDxZgz6v6+KeMIFYTKinwuaxYDa3PxqugbNeetbBtxT
         IUT1/elTCQJnn6OYj+XkCHrp2o+/HLvXU8jSJG5i4tPapLmYsBc5+9YnyChkFpd1lhx/
         ynGsxlE4rkvNWovQSnUykAQ/LwD/7Ay0FNE8/j0W2pvGqUxROjtlqIk3TwjUL6cM5KtU
         OublqV5gGtxGCwxW3IMT0++5BREa05TfxlOrCirsuabL8uJ+iKyHaeVJTVyIeQGz+6Gj
         s4s7DlLqXcWxWrlugG9s/GtAL0QyZHuI24s3evz1qu7+aK3e3cHk2dmGD4t5VXjKmysP
         TYsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=33dTcPj9L2G+RiKdxFTGDEqQpLqBfKgRb9SoQPYPLpo=;
        b=h3LFfdRTJtVnZmoctsBBzALwNLzv3NSBwKFwrBqKffNns507/9gdZvKLdNDfqN6/l0
         /ToX9Gjmukj9SK+NaxRtUzfCGN6nejP1/cKWF2w81xSktk/dXvRbdmEmkt0KeBpmfjds
         AxqhKX1XEAzcZaHD1M8RbX1Yn4pp066WDmhZNE/7Kzzf/iOXrBRIqKWwhobSMgVWq6U4
         diOen7z0+KNboaTpbdYEh7pKjyjkONAwmuDjOO+OxNcFd4bGfIX4zwF55izl5hVmgICs
         4m3H6I9gByjJt7o1NOPDihbh1fOoCMLzu2oF+3uzGDRHvJyE6dcioKTCGpwNKH4vPxee
         bGsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VSWUay3S;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id c5si3087vkg.4.2021.08.16.11.07.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 11:07:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id z18so34484553ybg.8
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 11:07:08 -0700 (PDT)
X-Received: by 2002:a25:c4:: with SMTP id 187mr24437571yba.498.1629137227399;
 Mon, 16 Aug 2021 11:07:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210812214614.1797845-1-samitolvanen@google.com> <CAK7LNAQ8Ucg=ZrEtMUCMkq3wonZqaijtrqbeUBod6DLERrp=zw@mail.gmail.com>
In-Reply-To: <CAK7LNAQ8Ucg=ZrEtMUCMkq3wonZqaijtrqbeUBod6DLERrp=zw@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 11:06:56 -0700
Message-ID: <CABCJKucbKVFvOmo6AsJBQfxL0zO3N9R2ydoCvZKpTwPSbOvbkA@mail.gmail.com>
Subject: Re: [PATCH v3] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Michal Marek <michal.lkml@markovi.net>, 
	Alexander Lobakin <alobakin@pm.me>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VSWUay3S;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sat, Aug 14, 2021 at 4:27 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Fri, Aug 13, 2021 at 6:46 AM 'Sami Tolvanen' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > With CONFIG_LTO_CLANG, we currently link modules into native
> > code just before modpost, which means with TRIM_UNUSED_KSYMS
> > enabled, we still look at the LLVM bitcode in the .o files when
> > generating the list of used symbols. As the bitcode doesn't
> > yet have calls to compiler intrinsics and llvm-nm doesn't see
> > function references that only exist in function-level inline
> > assembly, we currently need a whitelist for TRIM_UNUSED_KSYMS to
> > work with LTO.
> >
> > This change moves module LTO linking to happen earlier, and
> > thus avoids the issue with LLVM bitcode and TRIM_UNUSED_KSYMS
> > entirely, allowing us to also drop the whitelist from
> > gen_autoksyms.sh.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1369
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Alexander Lobakin <alobakin@pm.me>
> > Tested-by: Alexander Lobakin <alobakin@pm.me>
> > ---
> > Changes in v3:
> > - Added missing FORCE.
>
>
>
> All the modules are recompiled every time.

Oops, .lto.o is missing from targets still, which breaks if_changed.
Fixed in v4. Thanks for testing!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucbKVFvOmo6AsJBQfxL0zO3N9R2ydoCvZKpTwPSbOvbkA%40mail.gmail.com.
