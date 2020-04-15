Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCU33X2AKGQEU5ZHTZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAC31AB054
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 20:08:11 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id f75sf5917493ilh.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 11:08:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586974091; cv=pass;
        d=google.com; s=arc-20160816;
        b=JF1a1B8MJXUNSKjgmK/26rB532kzHzThtMmy68u8xdeHS2ugjSEsoZir8S+Vp77APZ
         ViIZ1QoVI0upY2etHOZ6/8Sc5e8bfsMXoh4Gf6IhUrzsq2DsS1L489AmW3j1SYfsGbn2
         I+57UtbWwJg+xOc8W+HpHwCblSxsZGlzjVEMkYbaPS+t2fATskj/GgE1hQK8DfC/yes1
         gWqr2ZOgWnXUP+7BABNGtJ6ZuEzj2Ela5MKuc4F7y24grw81RoffmuAg0B8vlCFa8SUn
         y91VqshKzITmr9Sh6B/TsSr2weaisw2aP6bt5wqN23IAIo4001OqEJcpUwg7PiDJnjIN
         fxoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zcITD/U2uvarLB+zz08E64Vq9Sv1JfvpooLiQzRilAE=;
        b=pANRe8hfRNUC2wlcYgfDcOYgXtFqhEELoFvlEBikLQ/R+ojQpN28h5FaDkWC/XWU7D
         +8jTE0Djdfv0GAcm68P7NNlSNbkudnnZF5hEmexXnriSBnFel4ijQDWj3iWtVAW1w71Q
         iqSubjvLQcz9+OzpTO2zVnMnOwfw4XDkcAhE9+hE9DF/kSRkM0QWiLV340UCCV8oakT9
         O0j5lSw2fljiRwFyfanGmrggJSTroDcIxUwPfS9ahfmF+ARGYOcj/EnQRi5pxMh3wv6I
         UdSkJIbIBieA9WUbcaAY668seJXRP8eNXryU3b2i7DrpQIKnekHKMcyaqjN4RVq9czfx
         Tycg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Za4TGYuO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zcITD/U2uvarLB+zz08E64Vq9Sv1JfvpooLiQzRilAE=;
        b=fd40mhxDFEYUYVL95xDJ+GUsD/dgo349efbbyt0lQ5S8KGsMZhqot1N5akuGewiKbd
         ZTHP0oU95v7hQtxEwwrmvNINQgWjFIUCzOTrQwUQXNBrltaxTT85O4KMqn7/vH3TfjZP
         PnRBmlcg5uAgy95qjr9ovztxlx7SAnOXa1VAAjjgRM9T3FG7y4NZZK9N989Mni940jAG
         mm1ZT6gWpRaZXkosRn1mJw2Z5jCyWuNy1PPb9Fe1AXmhBMEyxjDrSsr1WicQl6joqJrl
         m4Z38J2LjQAkwd63h88W87q1vzYmUMM9iBW4Peq21RHHJUzHV+3jFHrrDl5fy7a9+sXp
         vIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zcITD/U2uvarLB+zz08E64Vq9Sv1JfvpooLiQzRilAE=;
        b=tGgujkcXlH2Y2ppI+sAqF32zCEoNrnucjgAwMQhz5I9usBqdKWaSFYs2F0iarRyI9e
         anQS2+mo8LgCGzGwdYJh3DkmxiqZRPDePlewp3ny8A/FzK4++XzBdoQ9EPmpkv/PtXnF
         wqVP0abKpI22DcPHUD+Amd9qv2g5mP7IQsG0xF9WsYlndB1f7Lktp1GA2CWKcwvgfaKl
         /xHnsqkoR2nQbCyKlgR+2UaOm7cilN/c6CTz4evDbtAvptoNy5mjxY4zPz/pSDSHCE9e
         i9TmTYo94dhPLz6A/fpdSi0/hKK8/B2yZjuo7/hJ/9fbvykA0yn+hb/2l6IM2kZISoRu
         LYCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuazKhusepmJLpcjdF8D/g8ZrAg6xQMymPo8IcJqgXfua8/S04GE
	g2gylwRac8jx1l4SyZk36eU=
X-Google-Smtp-Source: APiQypITsMXkw1CIHAE7k0Y5KhhZH5SYCJEqbTa955Xxzxyz+b+GhL4z06IgCstVyukWD4L3FTJyow==
X-Received: by 2002:a5d:9042:: with SMTP id v2mr26586593ioq.81.1586974090864;
        Wed, 15 Apr 2020 11:08:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:da50:: with SMTP id p16ls1636715ilq.9.gmail; Wed, 15 Apr
 2020 11:08:10 -0700 (PDT)
X-Received: by 2002:a92:d208:: with SMTP id y8mr6915918ily.1.1586974090511;
        Wed, 15 Apr 2020 11:08:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586974090; cv=none;
        d=google.com; s=arc-20160816;
        b=s1O+RpM7nyIR2HuJaeDLECjAatapjcifOJgNUIGIVYuze+qtPYps0kJkefga023BYJ
         vc4/ygrJO+D19Mp1ZDZh4cdwMhcp8N9VZC+L7oN/e7xogYOBqQ39eDqI/eQpIDBaWL2D
         RdOILBvi5AZKQJj6/hxGDzMYJXloGr8oXErLokkT9B8DInZYqLOil34pJ3qMuuRs2U/2
         hp6BN4GuFiLGrhR+Hyl9pUJgIPab3w1nsjcHgomZpBXWkaniwz9X3rRqFy1Gpsp4jJ7C
         43lRiO+eR/xGEXLUjddeZQpHV6YEEwqOH3ACMNOAzywYEVF1C9NR+gPgwsM5IVZT0rYZ
         7l/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YDHyq/Q1NFvf4g+5tWc+Y7Lxmu+Mz9adPPrk9AeWm6A=;
        b=Tyqqpv9TVqFw4zbceUIYuQZcGidROKUC+Bjx06N+QDwc3KJ9nvXlarwSZrxrM6ciUb
         xqpb8vzrBEEu1htgyQVHNisz3pEOZA6umezJSnl0jLRjNYmLenlvl2wCmtxTX5C4iCU3
         sHD74kgRmw4qBfaYeL2wNrSnzMrdVyi0G2GvdJkz9fz9xYxipYdZtCnz2E+dLJhLhcqD
         PoRi8XVS+K12KegnZNwHGai2oKCtnu1QbwAZ9DsPnE8rwzPhMhduhSNmJQZ3rUPEhIk6
         J2/aHJhn4Dl2Byn/ecRTaiA8sklrqEE6ZtBzEFu16b2Dy+4G9n0ADJ5twMKbzlx/SZQ+
         1OjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Za4TGYuO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id p5si267176ilm.1.2020.04.15.11.08.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 11:08:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id a23so311102plm.1
        for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 11:08:10 -0700 (PDT)
X-Received: by 2002:a17:90a:2602:: with SMTP id l2mr547841pje.110.1586974089803;
        Wed, 15 Apr 2020 11:08:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e12sm14302203pfn.194.2020.04.15.11.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2020 11:08:08 -0700 (PDT)
Date: Wed, 15 Apr 2020 11:08:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Guenter Roeck <groeck@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>,
	cros-kernel-buildreports@googlegroups.com, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [chrome-os:chromeos-4.19 21350/21402]
 drivers/misc/echo/echo.c:384:27: error: equality comparison with extraneous
 parentheses
Message-ID: <202004151103.B419F67@keescook>
References: <202004150637.9F62YI28%lkp@intel.com>
 <20200415002618.GB19509@ubuntu-s3-xlarge-x86>
 <CABXOdTd-TSKR+x4ALQXAD9VGxd4sQCCVC9hzdGamyUr-ndBJ+w@mail.gmail.com>
 <CAKwvOdnOuMcjzsqTt2aVtoiKN3L9zOONGX-4BJgRWedeWspWTA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnOuMcjzsqTt2aVtoiKN3L9zOONGX-4BJgRWedeWspWTA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Za4TGYuO;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Wed, Apr 15, 2020 at 10:51:37AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> `git describe --contains "$tag" | sed 's/~.*//'` is my trick for
> finding the first tag that contained a commit.

BTW, this might be a useful tweak: since I have so many tags in my tree
beyond just Linus's tags (e.g. from linux-next), I also include "--match
'v*'". My ~/bin/git-contains is:

git describe --match 'v*' --contains "$1" | cut -d~ -f1 | cut -d^ -f1

(without this, my "git contains 85dc2c65e6c9" would report "next-20180927")

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004151103.B419F67%40keescook.
