Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSHCYX5AKGQEJ5GT2TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id EF91E25CDCF
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:42:17 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id g6sf2909056pfi.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:42:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599172936; cv=pass;
        d=google.com; s=arc-20160816;
        b=EGKc66rP582gd7vaKogIpnXymlUUEYUiBaZNkdbWAC4L5TPhoezZAG4YuSOfIYf1vQ
         EJvcte0OQABbBt9MfSTKylQXeeBBooZhv9Bi9Fe9Rxq/h0RwDoLNuifEhApGURixWyQ5
         x6XaWOf/CFEq8Jc4ECkzLxRIK809rf/QJPNX3MrRFsmjCyzGQXH+W2qd0sWv2wIDDTAb
         2x7W2UXLcPW2dbpU+JBzDqPnYkXzWpM9Npn6vjOytzkHU1Xc4yDrU3Eiblgo+uKYa1DS
         x3ciRzKlwoiQsCq29TQexsbZos1mFU4UAgCzhhGcuOq+WstjKbtXyhyAPxv8UFNK3xjQ
         LyxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RlA2hWIHn9hbJYKJo8x3zLVdZlr23+cCXFjKkKKHvpk=;
        b=wR48dHuat1iQwqpAb1brOzZ6IqP4ih1LoAuCUj1S863yHRN0Y1cvHOUqGIrtSCa5jl
         LWmYcTVO4M2sCLiOVyS3Bkaun2Uybyo31lFkZjxDaBeghtZ8KxQ59fI5DpZWWRXYBdeG
         CgdqGsjYqoyTO8MJxIllvdNHam3PtqKWRsmF1EhauyNF3u6QLlUnYIonLKmOf/6/N+8e
         wsPc60kQiFH41sDf7otR4qLKTF5RVNKV9tQFMpg6iE6RNgrn/fCc/MEpQ+FIC8hU7vxH
         yhOJB6z7Ap+KUwgdm1Z+gwjmnGZRhz4g1+klIqOdKO6iM8sNjoudqphh4rPVDg6buYht
         llKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XY2V+aPz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RlA2hWIHn9hbJYKJo8x3zLVdZlr23+cCXFjKkKKHvpk=;
        b=L+TbDyabN8X75RUnZjJqezW3S0STS5hBxRvtFLulvizG9OJ5SfHyjzw20ClfH/iGUa
         ljvZ/r1nc1xcAvCMSFldC9DsMkJj+Zy56Jpd63t1m0Hu/Bv9277olj/i7EG7p3dSfknh
         hsnaePZwOImnnwHEcbCGGlKQ9bY3kGF1QcPnI2VBF0OZRQ0XnXTupJ4kdb4fZkA1Xxo3
         rZoZ8FY7YOl7sW0XR7zh3sPiZUOjc2Sj+8adCsNq/AEC25CJfOzuvM0CitNYzMP5RBFn
         Xzdw691h+wDioBgyLohEEwzedveqy+h4DjTNa+itMTwzUKndTlmo52EHR+3UpF4slPAG
         p+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RlA2hWIHn9hbJYKJo8x3zLVdZlr23+cCXFjKkKKHvpk=;
        b=bS7bCA1XceXbFENZPEx7fWhBqHNptSyQc7dffrGEGdPtQKoJYRsfPHrP9Nv6CldTrd
         OXFXUVEuEE2uOUfDqFlPN/HfrSxQUXKE3dWV4nGQRFsz7EPhGQaZJPVhza+1Zq6hVx+X
         jAjxX3COLxrtt+geS+wa9SlGciH5G4+0VcE3jRpvPcdnQ+Ihkge+dOyEIugo0WG0CWnv
         V8OwfPEAVt0+aARSu9E6dMk2hO8BXWCZnS85KY6huQDPiTFDkDJoaE7OPeAGkyh2SPFM
         6hc9EH6oEpDfXYVlRzcm/0ftPOZ9nIBTupJDQIp+5sFrBS6qwlboQipwla5td3RV13jf
         zM0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dJyiekbU8GA1MBzjQZCwn1nh7IUp6GssGehVkDfvqvz1VZeAp
	gQ9Hnb6Db+NFdDcClerzOPM=
X-Google-Smtp-Source: ABdhPJxLO80lKPyzcvSQhH3vnr4tON2i4cIwTkFz4lM5ZKS2YQ1iopaVXla/nzpO0zoeUvZY0MZAig==
X-Received: by 2002:a17:90a:5282:: with SMTP id w2mr5404497pjh.77.1599172936708;
        Thu, 03 Sep 2020 15:42:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:2154:: with SMTP id kt20ls3148929pjb.1.gmail; Thu,
 03 Sep 2020 15:42:16 -0700 (PDT)
X-Received: by 2002:a17:90a:c781:: with SMTP id gn1mr5201766pjb.151.1599172936241;
        Thu, 03 Sep 2020 15:42:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599172936; cv=none;
        d=google.com; s=arc-20160816;
        b=WqR1lBvRB0sATTkSyE6YgzeADlWggY9jh/xAM84Smzffo9x4DWYBvQswOKBTXCg0VP
         a+cQEsDAYWuNDMBjktLahrtqm4Drdw0GmcYDQyCXh1Io/v6zBeUad5B0afNJz4/X002s
         NvtKq/eWmP3x+puBnzPUwRiZ+CHkH/a8SRoDU+Ejp1T9NSvPtWnbN5q9hyaIDfJxp/BU
         GDTO1Pl/04FuWqy7X4UeNgtYQuZ9lETPcB1STk0qYBMsJuu69HpVQD43ACRpJyjgaHw7
         cWCIGeKo4vtkqSSWIoLg9hoalapENSdlHa/IUK7585Ymdx0FKG7QLZmen9N499jIDYU8
         H0jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TlwuOH2EQG6MCnppWuU43l955MakvluKpUTVDERTNO8=;
        b=iJ/FkPvRfKIjvyUpfCD7ORI74WA06WN9CPVjVCoJuT2LRPrf5GTGkYkPOVni7ppHjU
         7cJZHreAZqgZqnfXvAxb9JgIZqqhjIYHzOnKvj9Wk8D/dkCg7HorRmVZ0xNcv4CRo6k3
         B7OMewDfR6buMH9uKJZpUFf/FdPBPuxZqhLloBQ/HX/uG8tqk5nheWcVpPPVCAHkR/uF
         DhWVcyPAycgmXXaQFSdlh1xkVibK9X62UqbrLe9AU7xG+xRpxeug2HhuCGAmPqiB+qlB
         w/WT/YUzACGpSSjjO0Uy/Kky8lhPJdnnkBFCbxHRv2Ta9HmHZ1jcmTAwLXebOw2HZfoz
         26SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XY2V+aPz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h1si187187pfh.5.2020.09.03.15.42.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:42:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id o20so3483273pfp.11
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:42:16 -0700 (PDT)
X-Received: by 2002:a63:384b:: with SMTP id h11mr4827548pgn.113.1599172936031;
        Thu, 03 Sep 2020 15:42:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a6sm3760136pgt.70.2020.09.03.15.42.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:42:14 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:42:13 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 17/28] PCI: Fix PREL32 relocations for LTO
Message-ID: <202009031542.F6DA50F6@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-18-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-18-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=XY2V+aPz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Thu, Sep 03, 2020 at 01:30:42PM -0700, Sami Tolvanen wrote:
> With Clang's Link Time Optimization (LTO), the compiler can rename
> static functions to avoid global naming collisions. As PCI fixup
> functions are typically static, renaming can break references
> to them in inline assembly. This change adds a global stub to
> DECLARE_PCI_FIXUP_SECTION to fix the issue when PREL32 relocations
> are used.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031542.F6DA50F6%40keescook.
