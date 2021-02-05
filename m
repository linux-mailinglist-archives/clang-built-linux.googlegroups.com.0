Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTXQ62AAMGQEHO6B4ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id D6405311380
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 22:27:43 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id o20sf5979727pgu.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 13:27:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612560462; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ta8TElu86V3Yr08XAGEVrqBYiLx3zoUnmc0B5jlQCU1a7j55u89kY/sVEDZngdM/i2
         6kqi72YsrdDzmeIMu4w0bFnTKXyKu92ea4joI7Z3dyuYTh/j8+afLSNDbDph/XTAMh0b
         AsI3Ygdv9uX1lgigkfYqsf2G/O4FVwi4+8yzHgA5Ty4F27d7ErrKTyloZGxxCJTDbVW3
         gZzsxVs/5hBYSvx72tZ9sa+oFNOlz0LjF/192p5ulXekzhXFprAMoGp7rj3nARcKISFA
         qxUtq86nSKHXsq29+T1wSpAY6fgUvaNEExIccaFK93ODrqMs6XeH+0v4Fez7yvKno1aT
         VVPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MFbIYi5iPPcAJ1GmfDWlQzpj4a3enG3SHKICC5NnTX8=;
        b=sCnUAZ5SrZBi6XfcZliUf2MUcd8l2HWy7P/uGo9FVEIb0fv87fAjBY0tTjn7NMe2Rq
         PD3o6nA7IyWV8EvJ9XdiQADxBVJHoBSsveUoIomxqgQgFvAIOZlUNaoKJuucQ0iDbuDf
         8ZGAbHifYKDJ7XmLhkKH2JXtGCRcUfBTWNi25Ljuny+LdW7QUT7+bL69Aghk4U2/Qxw9
         V3iGSiwApBlRcvVXtznawWr+hb5vwjfECnt1mMsUEkUrWYvhkwI8HlzLf52ffFgU8wp6
         Te3UzvKTVem6KOngvv72Q1K3+gv/brjTPbh1Rv61f9uaq3zRbfNZ9N4yl98t3ItyHgkM
         ERPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jq1wiEBj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MFbIYi5iPPcAJ1GmfDWlQzpj4a3enG3SHKICC5NnTX8=;
        b=TIpwXCSgRwSL3kvkDoJv91QVYLFY792gfLL3rBoYkGL6mp9LNHiqV5KJCPic/T12yD
         iMUzk5Um+kCuXGkT8Ns82y6O+D+dYLVKx6XU1o0sveaqV3iTqSXaRYWX0KYS6Dow63A5
         NPGFSEHUYe30idLNcpzG3y3uY+O7HvSQds99H+VhM8905Anvj5p8l1oAxijPN/upRFWb
         s2CtS1uoAdhEDU0ejBEWMWURvRwsJd4lXitzXr3usC/FGO5w9WbvyqKEJip6JCsLLVIx
         riFHqXQrc8PW5P0DPHCqy26OrGR4SLt36MDuy3ROwOgATs+lnL3rARgrWTZr3ZYbYFhP
         qJEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MFbIYi5iPPcAJ1GmfDWlQzpj4a3enG3SHKICC5NnTX8=;
        b=RSf2/0yvIFGUFpwqUWOPDFA72pwRVpm6FZTJEi1hwt2B8ymFDTmvOLLFvyKQqPHNOX
         Do3gBn9MYFkXHb13cI0O0vDmbqtO08pg+pFsOSv8CI2G6KJ+x2NgIeO64FUzHHEbGDSH
         1WumRCg+iieVTPhasLEe6dHUpl0d+yCwZ4MiAROpjvSqZDAJPAgK05mc4apz2fcexUVJ
         I/Vnm1/E8LnhKELy3HwBPjv6Hp2LMNVxWXLcN1OlCn46MMbT1xG/eDaAEGB7e12Jihyq
         rINPiksW460OoPKfKUtdpYmbLvQUxbZ1lvdmThWwiuN8fCg4wEo14Cq5t0i+q7klicK5
         u6hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320DlbXW9maHvJ4J5EkiOz726QWY/JuziTH/RIzwGtce1Pcq3HF
	eVBwWq/CFL2xRsBMlN/JRJ0=
X-Google-Smtp-Source: ABdhPJwk8edRaB8TA/zcFPWnrc1NRX2uYChnx4c9nsz4+Zm5A8NRRgN32Rb0ukDUJZeqGZHIagIwSA==
X-Received: by 2002:a17:90b:4b86:: with SMTP id lr6mr5789599pjb.107.1612560462581;
        Fri, 05 Feb 2021 13:27:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1c1:: with SMTP id e1ls4862143plh.10.gmail; Fri, 05
 Feb 2021 13:27:42 -0800 (PST)
X-Received: by 2002:a17:90a:cd06:: with SMTP id d6mr6096248pju.86.1612560462014;
        Fri, 05 Feb 2021 13:27:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612560462; cv=none;
        d=google.com; s=arc-20160816;
        b=kD9sUUPuJB4abWRXTYy9VzN+AhYNJOQ8zxXmKUGZx7bBJJIgegNOpCiHdapOvKUp82
         1Tmx8u4+Kqz69UOxm9dCsMFqoKGuIy388k4JMtHGkc4i0JUpWVRlD4U2xGOCsYf9dt6u
         mCg9jAoI7CysY35rKdvQL9hJbRdZ5PxqMa+Fkg0q3xLEBNTZTvL7OG/XFZOqsuIpDxbS
         v0holr9pSx+vi2Jymet4cl+rsePwguFqi0c+LZLNRg8qk1f0PBvTBYj7hAtGZKc/d0NG
         52pASyyMWRIp6QRX1FLQll90CBP1cgThtE5x0CwXHE1d2lD4kWB2JLf89nzCdn4yrmIF
         q6VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Dk1kgq5dh8W8WxLPxL65TBeK2gZJ5XdULp5BcH0JCfc=;
        b=ZW54JSauVtdxwmak5Dx9EeANr32gjUWvzi6EQSMU+VLb5/WP+DEJTSeZxIVL67RV6E
         eqN/Ew/cPr2hHhGj0HLHizARqMg+OfFzjfEcBfqQnGJo12GAKjEWgyFXrzfe939zU4fr
         U7qo9QaWZxjTnCROMRsWIIufnB40H4maw6HhoXWdXK/DA0UAfBVglFh0KnvW77F30dKu
         xPpqCnh4A8TXpylUoZ30EhR8pHhehvpv0X5x8taRsQIuTxFvwWs7j5SxlvjA8Irm5fpM
         Y6F9ZgiNiwd4YayZ9meGn7hwGIXqCTCNN1ycKvs93XAcVSkMWwGoOwyH1/lKN91JsfcA
         josw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jq1wiEBj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w1si374267pjl.3.2021.02.05.13.27.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 13:27:42 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3720C64FC4;
	Fri,  5 Feb 2021 21:27:40 +0000 (UTC)
Date: Fri, 5 Feb 2021 14:27:24 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Wei Yang <richard.weiyang@linux.alibaba.com>,
	Arnd Bergmann <arnd@arndb.de>, Vlastimil Babka <vbabka@suse.cz>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Brian Geffon <bgeffon@google.com>, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
Message-ID: <20210205212724.GA16835@Ryzen-5-4500U.localdomain>
References: <20201230154104.522605-1-arnd@kernel.org>
 <20210112191634.GA1587546@ubuntu-m3-large-x86>
 <20210203184840.GA1711681@localhost>
 <202102031202.F0AEC4A7@keescook>
 <20210205190005.GB461042@localhost>
 <20210205130223.37e6bf7fb8bfc773db9b5fda@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210205130223.37e6bf7fb8bfc773db9b5fda@linux-foundation.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jq1wiEBj;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Feb 05, 2021 at 01:02:23PM -0800, Andrew Morton wrote:
> On Fri, 5 Feb 2021 12:00:05 -0700 Nathan Chancellor <nathan@kernel.org> wrote:
> 
> > > > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > 
> > > > Ping? It is pretty late into the 5.11 cycle and this is still broken.
> > > 
> > > I think we should just do the __always_inline. Who can take this?
> > 
> > This should probably go through -mm, unless we get an ack then Nick and
> > I could take it.
> 
> I added it to -mm on Wednesday. 

Thank you! I did not see an email but it looks like my tag did not make
it on to the patch so that would make sense. It would be great if this
could get into 5.11 but if not, we can always backport it

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205212724.GA16835%40Ryzen-5-4500U.localdomain.
