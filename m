Return-Path: <clang-built-linux+bncBD4LX4523YGBBM4L7HZQKGQE2YYJAVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4642D195DA2
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 19:28:05 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id h76sf9384310iof.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 11:28:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585333684; cv=pass;
        d=google.com; s=arc-20160816;
        b=urry6XSdQqub+l5rFruZUswG7U2NBo2+H0Qv8BNp44IO6ew0iUzQUDvq9yrZJ2qK7+
         Rjsku8/6/ZkcSc8pqwn9/M0kUrq2iRRgDrDOkGkEhyzmyNne3/H+SF6B+UkUsxYNNanA
         O0irgf1y0CFSwm96qA8s+ZQ9WGWQiGHwTVLF8cjSxN2SVRJNHLavG7WGJ2eZyqjyTx7f
         hVLNbglwG58UowR6nnesfDsIH+9nlpmZkGnGZOcRqKpufPzwAekPhF4sUgoHYIrU+olR
         aH/ig0tZZt+LxBdSCW8EWhAPnvrjEs/UTYu1kw2T3jtY0yZM8XNHom3F2MeC3/1spwv5
         jNpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZhIy/cE3FWVUSTHhmRbTq9LOD0jk9cikG0kzUNC2OzE=;
        b=uIkCPDKz9IWG+2F9e4sherX3wjJRvAWdXbCdnt8BZkfRilwrqqqhLKaLKRZAHRQNZf
         jdJHMezbVsKNQ9ioHzUCQnCn/hnpeaNcXlTUqQ+YQ5xerngG6csDfgBi7Xo7jYvd5R73
         8SzFk7a+JItW7yMDfpKBkCJqc/TammlBJS95mOUMH1U64g/CY5YmQm+wBBVFJwYPiInS
         Ac8dkr7sogNyyL01IL3hOAYIaUPwq5Dx3sbWtSX90pqOToe0JuNtnZjasH/YyVz5aKyb
         WuNABJGWCi7RRsbeVYiFXIEwiY1io5/1bLB5kc8kx9U4r0DZnFQY4uUS2UsmuQfRGdk4
         E10g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZhIy/cE3FWVUSTHhmRbTq9LOD0jk9cikG0kzUNC2OzE=;
        b=Auf0o5ik90gYsN3DXIdA9JWGePjSnKRzUwWnZFR5aYivPvmSVZDiZ8m0p07A0SaEGx
         e1l5ee/lUfrCuAH3yxBXBkJKAihjG6loiVGa5T6VfWWW0aoNr2X/X8gv4P6Cl8xznteg
         ROUwom0I2/cHVfv9rXYNK+VmfdJip3AlLzoAa+9p/LZG+tMKh3fn2ae+UO4S15Lr/QEw
         bljDYPeNvS2u7/66fY6IxErStYwD8OFWX7qzP8WyOtVxWhk/cdt50zX6TP86Mj/fG5fw
         rVXWg6RvCMXfIQcukDNWv90yqdYt+DPML1CO2zLXAk21eNueAhoOT7aEiTzYa0/TQ33h
         R5oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZhIy/cE3FWVUSTHhmRbTq9LOD0jk9cikG0kzUNC2OzE=;
        b=nd86G11vsGBcYHitU3P6se0sB8pHnSxGaHaNBRTVNIzLyhbzFw4zX3DFlRmQNXKuSb
         VUJzdl3GjI+lu1zBuzKjuhr/rIbzkahYHAjAnJ+f1IqDT18p66p8uEZ03VjbAduBYp34
         puwGlsshocVO++Z1egIsd5Jveys80MbwL3s/1iVlQbJzO2++v4XpbU7+NG05a/1dIOEX
         4IyaRO86oa5n4I3V7LMl/FdF57a+lGUJFj4C6V05wTAiEbty8Sl4X8a5XCl8OebfPjzv
         FmY2F8mWUwZjSKkk5cz8Fv6B4pe8lLPChm6SqcBBHFOWw7UahwO519S4eZ1i2T2j8Nu4
         gFYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1ml2e+MJGrWxJUHkMs7f6zjsYenDvCrjeyR/JfekPnZqVwIg6h
	8Zhzw/9DenApOfsUY89Wy54=
X-Google-Smtp-Source: ADFU+vvOprIK7dacY8bsjCUORMK979ioc8f2CB4eo1R1NuuPj0Uom+KZfqG/hqF/e3HrtcxrQ2JfAQ==
X-Received: by 2002:a02:954c:: with SMTP id y70mr228975jah.16.1585333683606;
        Fri, 27 Mar 2020 11:28:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:ab47:: with SMTP id u68ls1976775ioe.2.gmail; Fri, 27 Mar
 2020 11:28:03 -0700 (PDT)
X-Received: by 2002:a6b:b24d:: with SMTP id b74mr13975952iof.49.1585333683278;
        Fri, 27 Mar 2020 11:28:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585333683; cv=none;
        d=google.com; s=arc-20160816;
        b=wHb2HWHcgbyy/xkE0DivawP5RK2RyQxnYvArP65hGtg2HB31Xjvn8XBrrSko6J4fBA
         UiOZfFlg3A5lzYr9Nw2ik7DDyuKFp2ZnDMtZiO3iNhI7CUao4QBYv0z8WsdzPxGbj68Y
         HOnW47Bozgvp/QppuqSTA1RyRD57UQoChy8gdjIpaZr83ChTJZmLdpQSh7+pOQEa00+I
         31kfw/dAZk7RwbvwooIJ3yXKFHp84sSe+8yYJQLe0naKwCiTqfGw/fBfkaIyISEMmPEl
         dOLWlPPprjcptxDtL/Eh53+4uDa0LxYzQzm0NSm1+hZcjwf9IrqRwigFLnfEORqCRVi6
         3uPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=7ubSZknpUkHhzMxD7zQQ1hUeykFc94ITPMtTDaOD39s=;
        b=he+6PECUQargkoI7Q/NZ14A5bIfCtv+ZowTHjbEsfK9QquJ+t6Q1KP04l3AibHtA7E
         zUoC85c9gn2QIG+dmjqykX5eiUa99s2oEqpDLYVA+cd4/hGmtiaUCS71XBrrGsxdWRvT
         oGdj2XG/GaeUsgKYJRRuxT/LBfAs3nagbDSh0Xe86SQOISK5t+D/a3yTOkcmcX/NmoAY
         jYu5qGfDHPYBI5ktDeQ2Bv4oyXJLfnTbiDsN7Jw26CgL6h0j1nyU2FgR3+sh7zJW+9c3
         AVHhM3ceyGsmDJBVRdb6yAVJCY0iihGVPKp9OV+Hd8/maIQeLfG/3qF4Z/9AFJzRM0Ir
         bFiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id d207si699981iof.3.2020.03.27.11.28.02
        for <clang-built-linux@googlegroups.com>;
        Fri, 27 Mar 2020 11:28:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 02RIRuXZ023594;
	Fri, 27 Mar 2020 13:27:57 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 02RIRt0v023593;
	Fri, 27 Mar 2020 13:27:55 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 27 Mar 2020 13:27:55 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Fangrui Song <maskray@google.com>
Cc: linuxppc-dev@lists.ozlabs.org, Alan Modra <amodra@gmail.com>,
        Joel Stanley <joel@jms.id.au>, Michael Ellerman <mpe@ellerman.id.au>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc/boot: Delete unneeded .globl _zimage_start
Message-ID: <20200327182755.GL22482@gate.crashing.org>
References: <20200325164257.170229-1-maskray@google.com> <20200326221625.GA22482@gate.crashing.org> <20200326222612.zbbiyi75emq6npzn@google.com> <20200327152428.GF22482@gate.crashing.org> <20200327165054.67pzzjwtg3dc7hx2@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200327165054.67pzzjwtg3dc7hx2@google.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Fri, Mar 27, 2020 at 09:50:54AM -0700, Fangrui Song wrote:
> We aim for compatibility with GNU in many aspects to make it easier for
> people to switch over. However, just because there is a subtle behavior
> in GNU toolchain does not mean we need to emulate that behavior.

It isn't subtle.  It is the explicit documented behaviour.

> With
> all due respect, there are a large quantity of legacy behaviors we don't
> want to support.

And it isn't legacy at all.  It is simply the defined semantics.

It is semantics that real code relies on (and has for ages) as well.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200327182755.GL22482%40gate.crashing.org.
