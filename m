Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBZ4I7D7QKGQEI77TTEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CAC2F3B6F
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 21:19:52 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id y74sf768021vsy.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 12:19:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610482791; cv=pass;
        d=google.com; s=arc-20160816;
        b=y9X8lQYCDe29WuHljXkXTLS3ZHsdN0IOFV4XZAvD04vK9VOCNJdjt/dwey1BmWEUeV
         mLokEx0zQG/DdaHXGxfoqg1XhhTDDi1NpjIFyU+PVJwUL1hfYaOjF0o75imPmIB6wk43
         hUb/oEZ0j5gBH+gjyHO8XgS+yWd1LsXeCmKwd94sPSHuVQI2jsZJFE/twK6ovZGf1pdB
         h5nd/62FS10Sy5bJGCSD9+upP2kiK83xoxTHtnE+JxoZ9F8JY/h7qqzJwkaN2Df3BFH9
         tiDOYbQuojYLBgEh05bMeMrVbv2/xUhghYuvVsYSXJesRueV3WJA6H2euMtU3HGmqVKT
         4pJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ox/6/XXpGTQhRjhdIdYe2oMDHV5nJIKNH/6HHig+tHI=;
        b=ibvmfsEJTQpNhMJxcjOKWFRQSoMYpW85I3xIl6P0pvdjAsaWFvKV8saZZBmqVFpdwC
         PgZS6+6P6w3vqKDzjWM0nvT61cXjHoGOfYDRsF5JcB0zCzsZg5U4t/0g/41toWMHwhxf
         MRrYdW6i5EUPxjgrE6JtPnVMa+bCV/Ye40Qd0wtMr788+3pl58NOni/JT3kw3ssnrJMG
         8s+KLqajNU/KjKLk5V0qzLVORiX74c7mL5cSz5y6OVfC/srDxGnwuAHJa1FEgOON9gqS
         RaXV6paZEQZZCbBQGSoFI0T+4nu7DChXMFF0mkog5S0m/4wm171pkYOh2+MaDI1o2awE
         NjaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WvjLszQe;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ox/6/XXpGTQhRjhdIdYe2oMDHV5nJIKNH/6HHig+tHI=;
        b=Cxh2ZXHhmbzKoNqCyW4AaK6zHQig5biiaemuehUTDXEycwjNPukzmaYoWbgfXbzWJX
         XVyZW6+PFtP9YEN+Ng2zp8XjDskzKvJMc9VLTf3zHzvGRqF6mJAXw7dZhnoaTNdchpyx
         nD9U3CC6lAR9vJmlwVXiWpoOTGYaDG6oU4dAFoDcDSmdq6RVJ1A8FiqntbCGd+X2+Wxn
         mHiwfeEAqBAUOaPkz+vCNb2qKaS3RI2yIfNIi3gobYiMsL0uE2R5nqdkZ5zbvQpImBgY
         Ld/4bNZrvXk4Yhs5K4X2u5b1AVHsg7ckHG9PCqaTZmK01kYglDVA2rDZMQsqaeuyRQdc
         HujQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ox/6/XXpGTQhRjhdIdYe2oMDHV5nJIKNH/6HHig+tHI=;
        b=lUalas8aIpnPQWhtHt8DK8p9Re7H3G1pfbrggFs+j7qgAalROTNzajde/RJqGjU4/z
         ZfXD0+qbBA/c+RyFdEjFjg+tVYbM47fRcqiQwqG7qRKRg53L0Jedvcnr+SL3TVOkHf/a
         4MWdNDUl7xlKPuYqQDtSeftYj6At2AkeVb5/1Oz7IiMbzyGwXMXJJSuW7prwzEtKYjbg
         L/uCdvBV5vA1VbsMMa8WpX+hbyXDBkcdiLfIGVZsd1AYzSebjBTPKRu/Yjj5B/nhqmu+
         yX0+zj7WCvY70zTGvPFGp8d2gbLU7wR61ktVKBC5jx23OPeMQ/c/Lwlg4CWAhZ65NvHl
         nOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ox/6/XXpGTQhRjhdIdYe2oMDHV5nJIKNH/6HHig+tHI=;
        b=amyJPJJ8vyfcqvV9tAzTaezr515Eo1cZa/swBmSgqj0mailziDlOB2sSrtjrCaEJpo
         70RQ4rDAJg24tSRunlbiSetTo21xHiDU1Wt3NqMGPfCjrvnNnq5LkglE6mUwDObhZs0u
         s1g0G7vbkn4NrwqdvNf/Jz7uUBvYCO+1+qCG18urE+MwVxApTkmIOB30zL2pI99NZru0
         HpGFte8SNjs6FuodWC2MZwF2ET9EfDmCVzIng3gmXrCl+2KMsQOkV+0WPCIZbz+iH8K6
         7Zz44K+dyi+R6Pg09nIPxUBmbrxyvtXW7lYo0RaTEfdsEJ6fIh3OpNKdA8ikV3pM3fMK
         OkAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qSqEv7ZJ3SOeWmFgTpkDbkkKCq8nYCscNiDvfm9b+YgWMtbVj
	1xQ0+le21q9OzoRqGbDrY1c=
X-Google-Smtp-Source: ABdhPJzmgpNp5rIjm8RdkKeqaj3ps2zwP3FlaQDxhRwTnFo5jiOnMsUedARbGR2Odvj6PmiCHkOjNQ==
X-Received: by 2002:a67:507:: with SMTP id 7mr1357218vsf.42.1610482791083;
        Tue, 12 Jan 2021 12:19:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cd91:: with SMTP id r17ls629590vsl.10.gmail; Tue, 12 Jan
 2021 12:19:50 -0800 (PST)
X-Received: by 2002:a67:f9d5:: with SMTP id c21mr1374493vsq.32.1610482790656;
        Tue, 12 Jan 2021 12:19:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610482790; cv=none;
        d=google.com; s=arc-20160816;
        b=Ut/KxDImt1TGOLohILki3kyqmDPjJHLyGx3wOu70pITHlOagRRkZX1ZnZzAwSKiknB
         eOQQtfjgX65iVYmpc/AEzaKGIzn+Eix3ot46RBNWqECN3s2H6mLubBDtFQ7t7fcbBnMX
         j1dHnyhEmrDOIe7kwIYAz+2REygEb0vrpV4qE92LjLUBmsgVxP/qSO/1SvNp+x0n/sbz
         lAkgjLfKIH+zxLhlDrR5zP5GXkdzujyj35A/0D1uGqajNFvaRNCh9OAq9qZdDkKPJaz+
         /kQFC7Q/x4zY3VYRnmuQDjHicspwUSwZPXQ5KgyROio42pPqQysX9sN7bzaq3Ln1v4Nx
         f89Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hqBhnD/YzU63I8fHxCwq5RnpR9+xGyHPmW1V90kKSXE=;
        b=DqN08cEbQvYPXbyxe6SBtlcQg06p+zVaBevRQZ7PkMd+5QwVJgSh3XG+9sjnl5jJ0T
         V4feEPVzn7awLtmwz0Az9WXUF4sLKZDegL3bAlilV58sVd7cXTDTRzGnKUNApKlFE+0p
         +JWxyrb3tv+tBtfKoXle6wExtO7hNpw79csJvZfPTZBvIe96N+tCEsNIDnCRXDoq78pX
         9IYAglQbYQtDQKXJKfgcGO1nWRAToq+M2NmYqY8+Oq/re/L/n2ICmH7Y9aYrO7msqir9
         hy6IklJ1WuUGDk5BWpRhrUUlaNOhIKEbr6vPenlalPmUkQfvarBiOzThZwtP6+PhR5ny
         0kgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WvjLszQe;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id g3si315999vkl.1.2021.01.12.12.19.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 12:19:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id y19so6842026iov.2
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 12:19:50 -0800 (PST)
X-Received: by 2002:a92:c002:: with SMTP id q2mr849018ild.186.1610482790007;
 Tue, 12 Jan 2021 12:19:50 -0800 (PST)
MIME-Version: 1.0
References: <20201230154104.522605-1-arnd@kernel.org> <20210112191634.GA1587546@ubuntu-m3-large-x86>
In-Reply-To: <20210112191634.GA1587546@ubuntu-m3-large-x86>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 12 Jan 2021 21:19:38 +0100
Message-ID: <CA+icZUVRWowSyE17e1Gmdkdy+JetvaGW0y61MBOJ07W2N8QH=Q@mail.gmail.com>
Subject: Re: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Wei Yang <richard.weiyang@linux.alibaba.com>, Arnd Bergmann <arnd@arndb.de>, 
	Vlastimil Babka <vbabka@suse.cz>, Dmitry Safonov <0x7f454c46@gmail.com>, Brian Geffon <bgeffon@google.com>, 
	linux-mm@kvack.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WvjLszQe;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Tue, Jan 12, 2021 at 8:16 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Dec 30, 2020 at 04:40:40PM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > clang cannt evaluate this function argument at compile time
> > when the function is not inlined, which leads to a link
> > time failure:
> >
> > ld.lld: error: undefined symbol: __compiletime_assert_414
> > >>> referenced by mremap.c
> > >>>               mremap.o:(get_extent) in archive mm/built-in.a
> >
> > Mark the function as __always_inline to avoid it.
> >
> > Fixes: 9ad9718bfa41 ("mm/mremap: calculate extent in one place")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> I would like to see some movement on getting this fixed in 5.11. As it
> stands, this is one of three __compiletime_assert references with
> CONFIG_UBSAN_UNSIGNED_OVERFLOW. If we want to keep the BUILD_BUG()
> around, I think this is fine. Alternatively, turning it into a runtime
> check would be fine too.
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>

I have this patch in my custom 5.11 queue.

Feel free to add my:

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> > ---
> >  mm/mremap.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/mm/mremap.c b/mm/mremap.c
> > index c5590afe7165..1cb464a07184 100644
> > --- a/mm/mremap.c
> > +++ b/mm/mremap.c
> > @@ -336,8 +336,9 @@ enum pgt_entry {
> >   * valid. Else returns a smaller extent bounded by the end of the source and
> >   * destination pgt_entry.
> >   */
> > -static unsigned long get_extent(enum pgt_entry entry, unsigned long old_addr,
> > -                     unsigned long old_end, unsigned long new_addr)
> > +static __always_inline unsigned long get_extent(enum pgt_entry entry,
> > +                     unsigned long old_addr, unsigned long old_end,
> > +                     unsigned long new_addr)
> >  {
> >       unsigned long next, extent, mask, size;
> >
> > --
> > 2.29.2
>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112191634.GA1587546%40ubuntu-m3-large-x86.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVRWowSyE17e1Gmdkdy%2BJetvaGW0y61MBOJ07W2N8QH%3DQ%40mail.gmail.com.
