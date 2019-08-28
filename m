Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6EHTTVQKGQE4W3AYCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 45784A0DB4
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:45:13 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id o23sf70272vsj.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:45:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032312; cv=pass;
        d=google.com; s=arc-20160816;
        b=Or52dc2rMNnB7rkEZRS3PzoFGnpJBzJ1DXB+s1WVDvNr+sZL2KLLXEKlMq+flLyix1
         aFRLqbO49xJF5Yg0IS+tz+uR5VcAC1cCb7nJ2DwE0KqfiWAnO5jGelayicoPZEO7zuKb
         T8tSEuMyvHYfKBmupmJHCCWG+6BaFfIo3Ox3M+0dcDRpfjFfp88ZGh7dLSQCzwMynzfd
         BycivkyPNwrNTdnW0NSaIpM4spyI427InnHrxKr4gvRW2oDRcyZ1sdkk+Okisg+UbUiY
         yk7doD+o0CcJ62XkhEzudPe8DgKVv7rsOmWRL5CNnVdFEznApJvwxPArMS8xXEWBUsbb
         PUsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6cGRM8296+VgHRMQtTKvaEZbyEdswvnymGwC6yC8N04=;
        b=kCicSTlDYFCFb9WE082Qx0neq4iIN+XSEDLjFf6rtV3z7LY/74FZaKthVysHDjFcSF
         OhqYQDs2as9I9zgqK9AQeedk7N614FklkL9WTdNnHNqkJBJ56HpSWHsydTosTwke3qnz
         PumED5Du/5So+bfof+HftmdYfZLe0qLKqNHZPQasYqzDdAEG/HNMqih+T2V8ebTWxYYx
         jZ8NCgZtQgJf9hkN3zVIUZ9KAp12N33o8TS3v0f+DqAWdNKO3ywn35brwDKa8TX5FPKg
         RRCQEbQjYAXQ6mtMB+18NSCJkcDGViq+KBNlh/tfR1Z2eCjDDPBfjUU8N63n8nfUF+6Q
         APoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I+M9IpjE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6cGRM8296+VgHRMQtTKvaEZbyEdswvnymGwC6yC8N04=;
        b=NPOZxL+g6bK8o1yMgX81wisuLMp4SNmAU8oH/ogxWHdCXl5a5dv0vhWW/x30vQluaz
         Tuhcojdy1gwwAZ90c9+SVJ3zXAMHpczhA6f+DjLzIJIO5K7jiPQ2ZYMGMYjo5HRe1SUt
         a8W+cdz/eZyE1jEoTBhQmN+QlYJnNyQr1ZgCqUAR31pOaUzyWTxaX70lpbVBAPPMyQtN
         Zgv4FUSXUTPMxmlCAhFLY6fujNkFOCySLKRB2aBqD9PtqoPrdmdIpyz9MVTYInVKAwHw
         nxCImH83xJSHxq2jEhWz35S10abPbRxC14Iuy7/a7y5tZ5jBICtVDtbEGPjwNs8Yf3Cu
         XFTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6cGRM8296+VgHRMQtTKvaEZbyEdswvnymGwC6yC8N04=;
        b=KShkOsjkPddxd49/+roxV8GLo+4hqmvz9DED6+4dkjZJzvCf/FN7jf4Haut7qwmona
         sjnpM3JGuSn6FtNPKbpb8TUNXoOFf5e5lL4F+FuAsyxq6rg1zzU9WNWS2pdvBRobB9mJ
         HeBpFJnb64ZD2XXxlNtxFc8oR1YnkIu4aZprM+08vNAPAuPiiVG9elQs2icb6oyfnV4A
         Ff1BsQQXgIYhaOOD/4HGJbC4ESr/xiyYIyKLbT/7GjkFoKHdFG9OsEOtZszWbWxvO5CI
         SUGYUivYCDm4mG76OvlyEUuhFt5SN5w43AUkKHagaeK6OecOtYt/XzR8Bv2GDlBZ7vp9
         Pmdw==
X-Gm-Message-State: APjAAAVPEoYoDjGO4xaXTl3AfPuPPRbCsdKTgmtI8aFHlYh/3L7tEMeb
	fnA51gvhtFHmApKb/Vjf8Z8=
X-Google-Smtp-Source: APXvYqz4+ceHyHAc7iNoO4RWzs1Tx4+C6aUR0hRcd2qlqptq9rHlCKSycIyke0bkhpd8qcZBLxVvZQ==
X-Received: by 2002:ab0:7715:: with SMTP id z21mr3123668uaq.141.1567032312126;
        Wed, 28 Aug 2019 15:45:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf09:: with SMTP id y9ls84550vsl.4.gmail; Wed, 28 Aug
 2019 15:45:11 -0700 (PDT)
X-Received: by 2002:a67:6889:: with SMTP id d131mr3620174vsc.93.1567032311867;
        Wed, 28 Aug 2019 15:45:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032311; cv=none;
        d=google.com; s=arc-20160816;
        b=ZeIFOSHYNZ73eRHkqw0QABYD+Do8MN/DXT5XXwFCY++6T5tn2pfZuSRoYOrEh0gKkb
         VJPFDx/SFosEahGxYBQ6olGlnN5NYdMePZD3+hguOFwsVnN/0xPYBvHVdZRSvLG1Pv32
         N4wjAflNBCtJAr+S7SeG8r9gtsuwemFlwjmvcX10E36rIjiOimmmW5eRGAG7RE8tkQl6
         6VvACNsZkOYnIEhJ+Jbt3IKOjyH7L0AHObc3EIIKWSgw/5v4LdDPFcIiGBgVjVyMRnzq
         uS6ZzwMpH4Ffy+F/8lC/RZB+Aq1NYGf5EaHb8rYCGjSX2YhWhmVUI8pwEYsTcb2yQ6Ya
         UO2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wPbPzi8DJAAO/y+OeuN5vBbTcuT9S0RWHExziJUIWRs=;
        b=Rwoj+n9nfHSjLE7NZJbQ/nf6Ei6D1BJ126Y870AqthSwMo9Uo+wh2lysfliwcJj+vm
         G/SUWybmo/a7InTkZTFgT171ZQf3QARd6LpOdUyrQnvNASGzQ9xKt8RGKDGoHlqYhNMa
         0VVeq1Qjth2XpIo1nHS/nSDFb5q4CiFd2S7RlFhM5eeDlQzvaV6OanZ5+9vU2W9K9cw2
         a4MSCCYi9fIetOi8V5LU+YwOkHxA6y7sviR9Rzs6gwUSDEsb7hJMb+oQBbBFk7aEeGiT
         d4LHBtjnw3VEezu3GJ+Rh3nZYk+ymNYd5sG9qnXDKWGrx5wYcg4xyRszFpec94R+XQpc
         7iMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I+M9IpjE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id n9si24108vkn.5.2019.08.28.15.45.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:45:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id w11so628731plp.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:45:11 -0700 (PDT)
X-Received: by 2002:a17:902:8484:: with SMTP id c4mr6645214plo.223.1567032310538;
 Wed, 28 Aug 2019 15:45:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com> <e8851ba7888c433dac2ffa5d80f3289cd05940a3.camel@perches.com>
In-Reply-To: <e8851ba7888c433dac2ffa5d80f3289cd05940a3.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 15:44:59 -0700
Message-ID: <CAKwvOdn6N_hmuFYS0NS1jLkY5m-C591Kouh-aNbceTUjt33N2w@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] treewide: prefer __section from compiler_attributes.h
To: Joe Perches <joe@perches.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, naveen.n.rao@linux.vnet.ibm.com, 
	"David S. Miller" <davem@davemloft.net>, Paul Burton <paul.burton@mips.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I+M9IpjE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Aug 27, 2019 at 7:47 PM Joe Perches <joe@perches.com> wrote:
>
> On Tue, 2019-08-27 at 13:39 -0700, Nick Desaulniers wrote:
> > GCC unescapes escaped string section names while Clang does not. Because
> > __section uses the `#` stringification operator for the section name, it
> > doesn't need to be escaped.
> >
> > This fixes an Oops observed in distro's that use systemd and not
> > net.core.bpf_jit_enable=1, when their kernels are compiled with Clang.
> >
> > Instead, we should:
> > 1. Prefer __section(.section_name_no_quotes).
> > 2. Only use __attribute__((__section(".section"))) when creating the
>
> Please use __ before and after section
>
> i.e. __attribute__((__section__("<section_name>")))
>
>

*explitive*!!!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn6N_hmuFYS0NS1jLkY5m-C591Kouh-aNbceTUjt33N2w%40mail.gmail.com.
