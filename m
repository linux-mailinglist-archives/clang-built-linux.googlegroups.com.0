Return-Path: <clang-built-linux+bncBCUY5FXDWACRBCO2ZPVQKGQEW6C2RWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C94AC320
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 01:34:35 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id z12sf8781766iop.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 16:34:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567812873; cv=pass;
        d=google.com; s=arc-20160816;
        b=W1wc8feZxzhI56Nv8Alrt4I9shwxaBHf96r8Kf66XUCAOFGnD4IbitI8DpGX6asIbO
         SaBBUIjSV1wOwJ8Ixi23W8+7S9fyDqCsb01hLFCieb5VkKmUWlqPjecrVJWvWK6qU0jW
         faN8gMdj0aCVcSO/vL9LAvH69uuGPBVVSlGN+TesKsQAMctCKLU7TkNhzUHP4VuQYcKw
         pVbklZ0hBMYLoZYpUx1VcmCUkayblPdblVw3jKeGkozJICqCguDn3LaMBVkwzNqzXnQm
         sncpMOlP/vDqmtwU5akYOeaLfsqFOt/rYX3T88jfN4C6Fy+FMmMpMv+PKtHbSiAKR2q9
         vvbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=HQuxrELZy+1IP8KGXygZeaKgBJoGlKkMiny/qgBi0uA=;
        b=JDrMbAxlv1J+X5c/w6QfL3b8lQnZM6B1y4xofNi+2OtIpvGRjDaN+hsdZMUYzrh9gL
         PneoeetPgdZC+zlFMUdVH+YTIuY1s/H897vzPTDkC/T5wWbV3P+ewTq9leHC5G1aoZk3
         GzJH5JQGAS4Yjo9En5FkGEmcSp+rmCr8ubfOfHUKhsFEmuQ83iySeMvYyOfOhblsz48x
         TvITQKjAAzNONQP8t1a5n/sHH7d9dKUhfB3QD1bzil9QlT2BEdlbR1MgUuXX6HPa6Wie
         Xl/pXFKVUNW3VwXDXofmHHGz0DNYXNcUlzE0xAycQ7PLgQg4EB+kGUqKmk/UwCLGLIL+
         5TCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jxbb5ZVG;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HQuxrELZy+1IP8KGXygZeaKgBJoGlKkMiny/qgBi0uA=;
        b=nnNeKMvlcPAuGWhndYyU7daxr0+CWgbT8CsIEiw7nhjIRZa0f4EEkOpKlDRCGlIbXy
         E6pjznorbgw3v/dnFGrAxkdknpyUHKtwCRjY76JsvfbmGJxq0XnKaApch2T3ECKTmDId
         XKsEIl6ZqjO4J470fvi9VmqJLG5MeA17pVBTO5LKGEnxkxafA0X5eI2ALAGTEfQS+sJu
         /UJNglOBwcLmRtIO1d0qFTt3ttfJ2dhA6K9qn6lCWTHAST6o1Akj6+FZToQCyvnrPjkA
         Fzg2oPQvAwI/zFgcFSb0mRJ+2gbqIf2yotHVdm0Jn8w5GRwEk41ICtiSB7k9k0SFc/V4
         QKuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HQuxrELZy+1IP8KGXygZeaKgBJoGlKkMiny/qgBi0uA=;
        b=VRTxHx8ZwPx2gJtbmsGTAaVFMFddAdQd0AcrEvPje0lddPZ/D59XaFw0vuOGVmk+jt
         UvnVqsaa/3NYmovHabqGQeaeWpvNdXP5Agjw6/H//lHXJ7c0eN6mH13GbSvo2EcOTJyo
         WaHqU+KKyblJ5j5TT48y5kC64FbZuyB0ee11OsOMJ1dWzvvqlRE6Ghr5EAMdFX8vpmEb
         B3kYrnmWlYzugtVjtrxZmw3i9KwNZ9UwK3I61rApVL5t+3WyvD+4B1SkXvUghnk+wkX4
         fxTRlructjfYkZHDWN0F06ACGmoSFR6pEorZOYTtx5FyZgV/IFCrzvSfcrYcMIvH/Fu0
         z1TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HQuxrELZy+1IP8KGXygZeaKgBJoGlKkMiny/qgBi0uA=;
        b=V1HWLBbzzYBeGh1bnNPZiFd8PnGqKLxkhnytiebiFITUfajuBskebWDuLeTT8v0H8p
         Wk9MoBpPQqdWAv2W2xzQ2mV6QBC0uXRIUUflPXaN59FMu8STAmJhco8MN00CRqYtpXjl
         hv02ZP3SeRzUm+JrvzuDjlraazujnGpal2ZncIB43WfJvFFB1KYD4tqbVvdTRQEUU5O2
         J/E08ZHacyQUIlI253kTuKmEZjvLg7PJozL/aJnyCrgI7XbO63cWp2AnvWwBb3/M4USl
         y28M735m4eBswEPpFlkRLhDylIGcZemD0NNoIVJsbTYApo0GeSXUTu1poxRA1LaMHIVf
         0Fpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUCie4AcAN9zv/dQwKQnguOaVYMhbHJ/lyMQ56ATFscVDYGbPv/
	LdjJtkTQGB+glGDVllQuLcM=
X-Google-Smtp-Source: APXvYqzEw5ODBVwlBHPJyBHTNUVAjEOkvTrfBwwXiyWn5Vl5jbmJ5RFJt6/2giI+ywD7TTwaBv7UNg==
X-Received: by 2002:a02:948c:: with SMTP id x12mr12680113jah.96.1567812873639;
        Fri, 06 Sep 2019 16:34:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:830d:: with SMTP id x13ls2106786iom.2.gmail; Fri, 06 Sep
 2019 16:34:33 -0700 (PDT)
X-Received: by 2002:a5e:aa0e:: with SMTP id s14mr1213589ioe.289.1567812873376;
        Fri, 06 Sep 2019 16:34:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567812873; cv=none;
        d=google.com; s=arc-20160816;
        b=Luri6W3wujXT4WD0K7T4PVaT+XEhqRIcBZGYQse1M1mISdPI7Q/l9rLZWQl+UiLvwj
         vxtWvJGVfV4OonuHvO6a9WJdz27xrVy6C0gQwM1YLmWvGjVBkZ5b9rXGXKyWY3U8pddr
         qDjRakTs4DnwapTFErSCCeH9P2db2/uGmcm+d5G1WKDywSL1j0+FpLlexC/tUtPYL2v2
         DrtR7heApZ+NOoMFKNw/5wQ58pfOCeNjbLnbOdToPWJDqvyb6tJRO+JUV+H6wrJNYLdW
         0F2G/y0AHkX+eb9VypUMJnYxtlvLbjaAjIxG8OkxE2W36Kx6NFVZPBzMno0v0aM2nKZD
         DJDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PQUdTfmTeC9Eu7doYDquPbP6FsNUDihOtUoLPN2jFQs=;
        b=u1rfmusor2JoKn5iuj+H1q8NG6x6rqTfPlZAXS7JjUlLS2cnIMLpmgArnpeUePal1M
         yR6x6KkfqaYHJ4O69KIx+rCR7iEitgr1zYHgcA2rS8S7WFcqOiH4b+MzbGmllriLGlJr
         CyPiendEGR3v1I5nCN6ppNPqUcz/DZpt6qwalwFWIYnqCSIdN38RPrGHUq12DYy3Cqio
         dbzLko4rx9Pt/L5XOt/05wtA1LM7+GMKYa3I8XFWBFoaf/x95VRJSUc+PBmjFnITZk7N
         154x9YUisNp+g1bwz/afZMTcg8o/+YSOHPNLiPhvwE7GoYA+ogCPJOYquEAaN/Wht2/V
         qFyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jxbb5ZVG;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id a26si232374ioq.2.2019.09.06.16.34.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 16:34:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id w11so3913781plp.5
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 16:34:33 -0700 (PDT)
X-Received: by 2002:a17:902:d702:: with SMTP id w2mr6804221ply.321.1567812872968;
        Fri, 06 Sep 2019 16:34:32 -0700 (PDT)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:200::3:46a4])
        by smtp.gmail.com with ESMTPSA id o67sm6610359pfb.39.2019.09.06.16.34.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Sep 2019 16:34:32 -0700 (PDT)
Date: Fri, 6 Sep 2019 16:34:31 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next 8/8] samples: bpf: Makefile: base progs build on
 Makefile.progs
Message-ID: <20190906233429.6ass5x5inaypvbpr@ast-mbp.dhcp.thefacebook.com>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
 <20190904212212.13052-9-ivan.khoronzhuk@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190904212212.13052-9-ivan.khoronzhuk@linaro.org>
User-Agent: NeoMutt/20180223
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Jxbb5ZVG;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Sep 05, 2019 at 12:22:12AM +0300, Ivan Khoronzhuk wrote:
> +
> +If need to use environment of target board, the SYSROOT also can be set,
> +pointing on FS of target board:
> +
> +make samples/bpf/ LLC=~/git/llvm/build/bin/llc \
> +     CLANG=~/git/llvm/build/bin/clang \
> +     SYSROOT=~/some_sdk/linux-devkit/sysroots/aarch64-linux-gnu

Patches 7 and 8 look quite heavy. I don't have a way to test them
which makes me a bit uneasy to accept them as-is.
Would be great if somebody could give Tested-by.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190906233429.6ass5x5inaypvbpr%40ast-mbp.dhcp.thefacebook.com.
