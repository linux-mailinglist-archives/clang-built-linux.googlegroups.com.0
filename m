Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF6C236QKGQEL6FQNDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 016022B87C6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:32:57 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id e3sf2281621pgu.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:32:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605738775; cv=pass;
        d=google.com; s=arc-20160816;
        b=E6AXGRfbeQ3uTDlqQq3l3jEjuf1xvCe6nouOS9rUwf1VxFfXiL2rNLESb75SISZCqt
         7JAImf/sooMwDABiRRLzcHr4x3bjtEzQOSgy2IRZz4EaqZOwTAYvoCpC8LkBJcnnIfQb
         UnlApbcG4ma4oO6d+JrVJbzIyzUJI7r4ahjIhZDtIx0jtZRMsIpAVbuvGNy1v3WgUrYd
         bjhMNW6AzNSRjK9YxxfjyXqTnOzxUbJ0J6CnXngvkcKnTslVfs+rWVVfZxxL2skwi+3W
         e1QjdA/LcQcssK5nBeSAdZ5b0IDKc2sViTTZb/OVQKhadiexxQ0MuaI6FF8CClLFpyNg
         PZ6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JhFAP7Bnu01lgdDNR7xg8u76VGRN74Mdx51bqGXtwA8=;
        b=o2V8bas1/wDxgm7JntX0PaC3gPlZdSaCA7Bn3qS2ykhTai6fZiFOI2L1PIKuPX2l4t
         S4T2ZmO/soVKfFAzKdqTFArh07+2fsVOuYK5JDSv/fKchjIuYxFviNXf6Lc9Q2/kc7oC
         8H4hL1UGrI0tQZNrYPg7m3UtPMQ9B5saPsf8UGSU4o5Wqv60soAE/XAdTgbsOyNhTi3w
         RZeblrgWFFfZcVOHk9XWqXm8w8CnZDKmDuShuYfPyhh8FR0CGpXXwxfCVvuIKBjHRciL
         b7OREMoJQGH6J1B//0+j1mSX7b5JpDhBUi+0a1SbVfNOpj0D0SUYFSzJT3fjCnYP3XCa
         Gk6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lU1riYOT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JhFAP7Bnu01lgdDNR7xg8u76VGRN74Mdx51bqGXtwA8=;
        b=FgYzfBm254OWnDQkdrfQliyBUkrc/j2gtnj4NimmL8l8n8E04S2yL2EFkcgeSbeyho
         Xro7w/ldG3hmY9vwqp8aXJM5l22W8oUf+J6dOW6wx2M7cCThS1/Z+esvJkiqRBBRNCfQ
         jlntVylXJUSwxPNmkqadkJ3/+q+UuPHqdAcRX/xXdFfgvWFUW3ADGEm6nsIckmCha4cG
         xhv8CDFRTwElG4ttha5ATse21j9oxicfgbjfXqvJ8OOVwOryzA+JafUQ+rIk4UdsUSD9
         MyTPSYQT8088i/yDROtgDg4L3cZ9QJBiOmtl3aALOVVUh9KWhDlIq+u1NvyloDoOs0d/
         LAuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JhFAP7Bnu01lgdDNR7xg8u76VGRN74Mdx51bqGXtwA8=;
        b=G9uGQmYcbXScAx2TPBhkA+GKTbS4oym5DFGeWF6v41TZd4CjwIONFIy/9BOtb+R0LE
         m4h0tpPsqhZc6l3jNb4S0CUktvNIqJodGInpbSAU2HOVh+Q4zH5uZxQSTf9S3d5zf1Uf
         xg32uWe4Gg6M3nK3JjSvugwsF8ZF8enKys0iE7LFaKkshC5bMnFSZtYgxROTNQmmPLqZ
         qCFeI0sTLcIGC7AVbzfOGkGFhrM+nTTDzjk/H+tRGFUHT9pYFFnuhm6gsiCKI4Ivs/3L
         v2B2dKHCtBJxNcaA+DNYvaKDYlOuU1hdLAy9iIRY8hIcCvjkH6Dbt/6Hs8Uq2L+U2hPH
         hs6A==
X-Gm-Message-State: AOAM532B0ingP6+oYQMKl7xYG4ioUtc+6TtirE8E24G4yNWiZZbO9Jlv
	Em8LgVhA30QAfj2g/dL7ovY=
X-Google-Smtp-Source: ABdhPJw0HEFTVpel17vE9J5IXZXxqhME5zb8qj663HG/eQOGTwTC7FP7nX980r6ioWEpDvLUI9AEDA==
X-Received: by 2002:a17:902:d711:b029:d9:c89:c1c3 with SMTP id w17-20020a170902d711b02900d90c89c1c3mr6252987ply.32.1605738775729;
        Wed, 18 Nov 2020 14:32:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c113:: with SMTP id 19ls425870pli.11.gmail; Wed, 18
 Nov 2020 14:32:55 -0800 (PST)
X-Received: by 2002:a17:90b:14c:: with SMTP id em12mr1234489pjb.170.1605738775090;
        Wed, 18 Nov 2020 14:32:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605738775; cv=none;
        d=google.com; s=arc-20160816;
        b=cs9bIjAqeZqcEUv8roPUZz6N0sgZAWOh9hZy6AJJuWw0YryPIrDYdv1UAEvqQpBjom
         cD7qjthm8KNXn+LGH2YTW6WkaEWm061CnzEYIOF4kWHQdDQdc+mvlSHgz9ssqfzSpU/g
         cr8cdCA13lae9E0QSkyPPOzQ1d96z9L/8wBcDwIo8rOsj8dogmQ9P8GBlbvV4EC4UrM+
         x0QahUaOgjCrN1MCoRIBQblsScowN+UT4hek3ItGoGzbDiWAosrZkR8JLZ5h3svtJmCq
         5pVdzNiByUs+Yl+bPr+b1TnIRlg0h9ynuGlSWFD7S9BhQjr/pmNZ3ifJPTPZW7saP8Du
         +XjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RkB8RJl1jwL5YaiulwRIS3sc8kr4fz3QbRFMPfoH3OE=;
        b=vz0du1Fqmo/mBt2/iCs5gosB8MPHq1+zPPItth7Q3PHOQ1nseSF2M8wxSLyzXh7LMZ
         F+7sAjqE8ECF46Rxuaoo7BuqKyIc4SGKnUCc9A8vLNCXAzA3LzdgNmH5eOjeAR+O6Xei
         tXNp2M0mf8uI1NKpoGxA9zQH30FPXHABZQ965AF2Yc7HrXfucxzK5yhy9G4tSDnORz7Y
         rcVAKkb5yFGmxKKjngJ53Q7RfviGcMr4YJjN9qngcwFFxMdcN0X+J2X7GO52RRhMpCPD
         4ONdqejmB2PgZ4n4Cy8Gv/WvFXqVqN5N1k++CSXppLSxYGjI0Z86Q756G4ZOHnBe3ISz
         1Bmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lU1riYOT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id h11si644546plr.1.2020.11.18.14.32.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:32:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id v21so2341734pgi.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:32:55 -0800 (PST)
X-Received: by 2002:a17:90a:4881:: with SMTP id b1mr1196220pjh.32.1605738774651;
 Wed, 18 Nov 2020 14:32:54 -0800 (PST)
MIME-Version: 1.0
References: <202011182008.u7jsMtBl-lkp@intel.com> <CAPcyv4haEaWN9f6eCpnQEcjo4kcGwYp8dcs2PLDnvhG6wj8cDw@mail.gmail.com>
In-Reply-To: <CAPcyv4haEaWN9f6eCpnQEcjo4kcGwYp8dcs2PLDnvhG6wj8cDw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Nov 2020 14:32:42 -0800
Message-ID: <CAKwvOdkLpCL22beGLwVJOYiHkF7zJE2AX2OB_FJmQE36WNgj0g@mail.gmail.com>
Subject: Re: [linux-next:master 5868/6773] arch/powerpc/mm/mem.c:91:12:
 warning: no previous prototype for function 'create_section_mapping'
To: Dan Williams <dan.j.williams@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lU1riYOT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b
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

On Wed, Nov 18, 2020 at 11:22 AM Dan Williams <dan.j.williams@intel.com> wrote:
>
> I do not see these errors with gcc.
>
> I feel like clang errors should be flagged / de-emphasized when the
> same error does not appear on gcc.

Also, note that Clang has warnings GCC does not, and vice versa (I
imagine a Venn Diagram).  I give you the benefit of the doubt to mean
"warnings that both compilers support, but only one is emitting for
whatever reason" which is fair; though warnings unique to one compiler
can be a competitive advantage.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkLpCL22beGLwVJOYiHkF7zJE2AX2OB_FJmQE36WNgj0g%40mail.gmail.com.
