Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZ4WT2BQMGQEJZGPFNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D583530B4
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 23:23:53 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id u12sf5619923pgr.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 14:23:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617398632; cv=pass;
        d=google.com; s=arc-20160816;
        b=ULGlhLsJBljdcXgIbenaU/NZvsmIqzpcqRZ03sZM7dmI8OZQb/5GOPlrGQ/YATTCiZ
         W5VsKgagHy6WaTaGo0szXfZiDYNsZi8GFgM4b0TtgrW/DFmUWFFZRihGgDXpcErW60tB
         QQjFiqcetdEhxzKUUKmbK0/PYz2hNYhjonYLQqxknY+3R68oSyabGAAg0sNGMg4kJcfk
         IAZLUacXdbYnAMhc6dEEoIUe3AnM2KxcJjJo1dZ/LtUVC2NUrPK69aGHUbUig+wm3ke9
         Lr8eoiK3mNVSGbK4VBxYV79tmdKl7ygiQa9GkXa8KMlr43RDR9X79CiZ2akrK80ykwEp
         lFjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FOBtjXlmBcYtu+1ZVvNdd6cmvION8jm1q2OxrOm5vj8=;
        b=LU788SmEkLpJFUlNuQP5DEujo0wbIrEK4be6qgeStQ6Gdm86y0FLewDYg2Dj3kIsVy
         Q5zoFXk32ftsqQz+CiH3droAbPqRnLSdjjT9fFjf7a3FxHqzEjp/cbk1YIBvVsILIQVV
         Go4eP4fKuLuD04DXcIOTl+ZX55R0tx7AAiLrqNOv6LfNBPgGb0JvKaRC3UKKMSWOZT3U
         NxvLzlm3KUz+GsT3TstgG46mZ02YIgkY5ENDyzaqD52mbKXyiBnFnOqfol/O3gJ4r52L
         po1IOFvQ/Ryico/nNcv38d0cO37tFbGgY9NMDClQ4Yk56zdeTNo87zUckdfZKIE0KdpZ
         1VjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZZHUC404;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FOBtjXlmBcYtu+1ZVvNdd6cmvION8jm1q2OxrOm5vj8=;
        b=ffbQSWBXr2Go13fYGKBlApWRI6YpsYeqdAoVJOuKFFJiKt4zmLWKq9OLl3RkjKXT5R
         DBYeXo8seQgRrJya7cfYbeBuTxpSEth1j6dEGNUhgOHPwukAi+EFprde5r3oThYA8BZm
         V/YZU6DtlgZ3zdGHFNRApPf3A0EvMTLPimmPfa5pYpDHmIw5dCoAkaEMvpireD/BwCCN
         +Txk4J6VixAStXX2IXkYGH71Z9kyVHUaBJHTFII/tY1iTLTrU0hBnrp0C0zHoQ8lM1as
         7Zes2ZpI7stZ5RYwWUw35qf0JLaJp/fbkQEWtrod1hBAeV4X81dg63WU00278RSlKmt2
         Fvnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FOBtjXlmBcYtu+1ZVvNdd6cmvION8jm1q2OxrOm5vj8=;
        b=VWW2L7AdRQU9zAOC5RlBoxygsPw6IsHINjAobWmAqej7by57ucyQ3rsnY4NxKZKxAn
         WcUa4XRYVrlfZ+KfuJOn8wkIKoMDoMe54dVL7uor7Qf9setGad25EzzTtq3SXgc0j+26
         ew/qWzUfGuEhKmrUt7clU5/Pt/UZDL5gZg/iIkdFZQeaNOzmVcN39eCWPczNl5cNV4tq
         hjUdnZAIS4Kx54OUf2d5EKXyJR/oCgQB2G21Im+qCDgZUcfY5xBWyngGkpNF1l8FqZo4
         l31APR7+rv/xl4gr6xYD+UXp6P+YvUCXJxJWV5t/IUoyA3Kv2DrB50a4n8gSoTOgEadc
         oGvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tiBYYp3pHEXMZ08OiAsCE12xvMVxwJsh4K0d28PJW83yXFHwT
	EDI7PhNylrGfPTxzWGWhv4M=
X-Google-Smtp-Source: ABdhPJwsvPIltkxGFAmp835ZC7CjxOR5eRxw3IW0JW43i+YEh0Eed0odaCZvhpNYLo7tRxHQV7bkqw==
X-Received: by 2002:a17:90b:e87:: with SMTP id fv7mr15588353pjb.27.1617398632060;
        Fri, 02 Apr 2021 14:23:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e750:: with SMTP id p16ls1208651plf.5.gmail; Fri, 02
 Apr 2021 14:23:51 -0700 (PDT)
X-Received: by 2002:a17:903:2490:b029:e6:faf5:86df with SMTP id p16-20020a1709032490b02900e6faf586dfmr14116678plw.69.1617398631489;
        Fri, 02 Apr 2021 14:23:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617398631; cv=none;
        d=google.com; s=arc-20160816;
        b=PmKdSm/1RYTUX7oZ62sOuG4AHj0aVjV05omC0Hwk05d18tYOg+QgtwFTqWJaOTOca0
         xV3tigWoyUM9eqYDN71tdSX55EqddglP1YYxuVJtwwH8XPv3hk5StQEXTGmGL4uDZE0q
         zgTL1k7yYeo9IaolV+GBv+6Zuf+xqiVs5lwbOUgoVb2+C/dlXCSzXdeX0weuNi0IkSCk
         epK6Q8k3XOtx7JutVpW28Y2OXLK5dgGw+QzMZH3AUKoV6CzEKtn5SHVdbYgR2BGcFZvY
         iqT69XZvnHV1c5v2Z7XuntpsbkpMxaY0mNuRvH2QqsKuIcx/0p4QfcFQXuSwBSLOCF2Q
         5YRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=08HQieGvJ5s4z39bQ9/VIsRPK3KWDyfUJY19CVcTpoA=;
        b=F+Aj1qMHSJFfFZ9StuSV+oGstdqfVkaaJzM/AlcxNTPb1M1RcFvdqKXxDKViVdDYzt
         2nHRfsDcxuOj9HY8ZdXSlt7swx8T6SsS6g3HcZUio5TiLT37KQ3Jg+rJjRu/WIVdnYXQ
         rs7XbmyTWtrmYJgxLDOEbpELFsjOwD9KkOjucdv0GL3vdXclBoLdyn54CO8ghiWeg1Ry
         YKElfyMDjOKUgqsT/PAVcmOkGiFpY3ikjdFunwZV81dXls+96jieukO+BMrW5lqyuB00
         PCXzvHey1sVgta1sop6HvmizLAdutQQAczXCdOIpXFXJppmIidNDgPqowm1xJCCDv1y6
         9B1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZZHUC404;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id 131si800265pfa.2.2021.04.02.14.23.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 14:23:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id ay2so3015929plb.3
        for <clang-built-linux@googlegroups.com>; Fri, 02 Apr 2021 14:23:51 -0700 (PDT)
X-Received: by 2002:a17:90a:420d:: with SMTP id o13mr15596212pjg.61.1617398631259;
        Fri, 02 Apr 2021 14:23:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t3sm8999011pfg.176.2021.04.02.14.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Apr 2021 14:23:50 -0700 (PDT)
Date: Fri, 2 Apr 2021 14:23:48 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Shuah Khan <shuah@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kefeng Wang <wangkefeng.wang@huawei.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com,
	Michal Hocko <mhocko@suse.com>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Adam Nichols <adam@grimm-co.com>, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v4 3/3] sysfs: Unconditionally use vmalloc for buffer
Message-ID: <202104021421.97A06AE@keescook>
References: <20210401221320.2717732-1-keescook@chromium.org>
 <20210401221320.2717732-4-keescook@chromium.org>
 <20210402063221.GA5260@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210402063221.GA5260@lst.de>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZZHUC404;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635
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

On Fri, Apr 02, 2021 at 08:32:21AM +0200, Christoph Hellwig wrote:
> On Thu, Apr 01, 2021 at 03:13:20PM -0700, Kees Cook wrote:
> > The sysfs interface to seq_file continues to be rather fragile
> > (seq_get_buf() should not be used outside of seq_file), as seen with
> > some recent exploits[1]. Move the seq_file buffer to the vmap area
> > (while retaining the accounting flag), since it has guard pages that will
> > catch and stop linear overflows. This seems justified given that sysfs's
> > use of seq_file almost always already uses PAGE_SIZE allocations, has
> > normally short-lived allocations, and is not normally on a performance
> > critical path.
> 
> This looks completely weird to me.  In the end sysfs uses nothing
> of the seq_file infrastructure, so why do we even pretend to use it?
> Just switch sysfs_file_kfops_ro and sysfs_file_kfops_rw from using
> ->seq_show to ->read and do the vmalloc there instead of pretending
> this is a seq_file.

As far as I can tell it's a result of kernfs using seq_file, but sysfs
never converted all its callbacks to use seq_file.

> > Once seq_get_buf() has been removed (and all sysfs callbacks using
> > seq_file directly), this change can also be removed.
> 
> And with sysfs out of the way I think kiling off the other few users
> should be pretty easy as well.

Let me look at switching to "read" ... it is a twisty maze. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104021421.97A06AE%40keescook.
