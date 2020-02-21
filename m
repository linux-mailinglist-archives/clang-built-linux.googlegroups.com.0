Return-Path: <clang-built-linux+bncBCT4XGV33UIBBRXHXTZAKGQEK4MDRUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCF4166C5B
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 02:35:04 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id ca1sf7396pjb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 17:35:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582248902; cv=pass;
        d=google.com; s=arc-20160816;
        b=rpVzCDQJJZSsFnU9xgk4DlE7YEfHnNdLOL0dCBS2+D1x01mdkeiruHiHQENlpGUihx
         HZa/cVUABNpieU6+nhvZHEbGmEFlS0TUhbEabMU2vVBRlnIRm15O1lKq7782c++9cQv9
         GsujcvmsU0BjjXiaat/4X5Mc/g8lKN7ULbBzmznuWQpD862YGsNN1dI1wMNyXcJfwewj
         R/Jo2KGmKypVrzI+yY0tv65xpexq2GYenf8rns6mIiyIrUz+XIWq9KFKgLKj5kmq/llc
         GIEoiSS6XuQdPXs5p8Wt+cM+7spJmx1A1jbERAPps8nLy4yyfpXXPSoikolMAgZ1WWrN
         KEYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=kYnDBZvnxTNuoRSJ027B5fa3nDnZlu6aQkFpBynOdCc=;
        b=sGhvojVve4FBfQTD8TXrCxKs07le7r0e7a+lhejahDWSw0Z1PC8wknHz7msufIcjBR
         VKk0xsq3CUSumQNII7YDL2J25DE3uMiwKj5fAAGhizNFfrYI94eYWCiXb/kxIj4id8Pl
         MDHjIlk977rRE7V5p361IlUrz4FB7eidSpNbLEFANgmutIsj/iW+n13ObivLLFuXtHdM
         3tOweE9CPTL3UXzG+gIC2xjlxVYKCnL2WdAbj7eX0ZIzmssFJEYv1rsR4X03iJy9q0ll
         QNidj7WPYU9FKzsMdHsQCRLYbiPOg4ShyrZ9dBr4UelptoN8INwllUTysdv4Qpwocx+P
         F9Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ai5nYwXa;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kYnDBZvnxTNuoRSJ027B5fa3nDnZlu6aQkFpBynOdCc=;
        b=enNTfAEa3TcJsU5xMSBsCxh9CDVDQk22BsQW8XAtUgMPiCn37EV7aq9h0HluDzRlwO
         nUWtgVV7vIampwctXnIgmiZRlpwvPw/uA10Fw0y0O3CjgFKPz8LQ5/w8HEDEClSZwOC/
         f1HXB69UDgogFvpR8IThvS/lMeZH2dMsPE5jW8SCwA/6moZ/GkMHowiYyCFjowsngliA
         K90hC3Zfg5zu+w6V0v3SYArRcnTLgqyhqjlxxar2CB1xavfRUKMzQHUzOzyOtzxcuRTZ
         8qL4NEqHiWasCol5KKFqC4dcFkj8z96KaSgG2hbxbbwmB7V90oh/Z0XlHQMiX/z3/Q59
         2YJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kYnDBZvnxTNuoRSJ027B5fa3nDnZlu6aQkFpBynOdCc=;
        b=cgLZrnvW1ofvF7lWTK1+GEd/KKBtjbJhwvixizfSWiU1AlCd+oc0Z1udZa+2+yECIM
         ak53lfFQQw5mhxCghCPRzdt9vNu/s/8bwnKfU3aqk8/TXWR0J1OHVX04TLDeI0CX+xrb
         UnqUMy9fVuF4S2jPQ+ssjbV8blepxryse90MaSFDIET7yMvHO8zGy2yUdcBdHG3ZDghK
         PdyQERXTiGMLSO4WzkIcQZYfEuBCqe2Ato3eg1mq0bMrK1ykNiGpaBKb3x16lydgnqQl
         1nSlqIc9seTQ94Mk+gq5w9uZe+KjQE46e2z0KyvpwBpJ2mPJd4BLu+Y5R4Ii0ghzesFO
         cJOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV7s8w1xD4vLEP6CJSPcEAVVmDCJX39FRcrF2dOZbIpcdJiR6Wq
	TJNYGcjJS+ugx+FMapRhT1s=
X-Google-Smtp-Source: APXvYqys63Jm/I5ep5v+hYC0QCSkNQLY8D4PRVKnzb0D9CNknQ0G6oozRbqoXm5Bkd7DjGQ+ujVOvg==
X-Received: by 2002:a17:90a:8586:: with SMTP id m6mr83986pjn.121.1582248902706;
        Thu, 20 Feb 2020 17:35:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls204559pfy.1.gmail; Thu, 20 Feb
 2020 17:35:02 -0800 (PST)
X-Received: by 2002:a65:5948:: with SMTP id g8mr9701451pgu.161.1582248902229;
        Thu, 20 Feb 2020 17:35:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582248902; cv=none;
        d=google.com; s=arc-20160816;
        b=Qt3w3ZHvK4PNezAERJ5fw1xRlqmhgvsPrfRE3CMkB7lByrDRdP0ZrhVR0QeE6u94Po
         X2wCcJW75O392QSMZT5bocsO6BJy+dQz2Nv4WCqFKVYJu8VdK38INg1K3AiFKcfHpK/F
         B2m+PS3fB1RKjwWy7k7GBJMJXrkCyYBeJzu2tzQtTpsYbK+QaRFlSLInqiR9l9Yp8K6q
         W7KZt2T33+fcQcxNVG8/huekWuqEcaixlQzedp4bfbA3shDDGqvitCOP6hav4nEh9It6
         NX/BGPi+CcWR5VMIcepNIF4R0hgFG4V9LZMXFt+n1EiZjJqfMuEF0MA3cEPCf7eEu2GE
         Qpcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IQAqWclGvtPRT9o1Pysj1QLxqtYbTqhALTNBntQpRNY=;
        b=pVs0QiwyDsEEE/81v+QAecuY3CC8W6azW6rTCfTewWM8cWwXD+d3PKlpOsk8vwsy4m
         WAVHv7pRZiv9ETE8kCoy4TZ9y3Qx+rInwex0yB8dOP4zf5JohY9MAKlSNCDFLqO3WM65
         Y/D7P+YMQLsecmj5lsUrhTr8O42FmoYwoS08mUcoh30iwN3JgECLvfiL7jIK9phA5wPM
         d1nnMwTOiucLAEf6zLpN8m8ub37/fd03RtaRGu43yeCGhHe2f/WsP1XwaRUP2VJrdsEv
         bLPmICrhZttoYhrIE9DZTN6eTmS+9b6q78i+BUmDDPLW48hgzMndCSdtbOfkK5btLwdf
         ZOrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ai5nYwXa;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f3si1720pjw.0.2020.02.20.17.35.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2020 17:35:02 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AFBB0222C4;
	Fri, 21 Feb 2020 01:35:01 +0000 (UTC)
Date: Thu, 20 Feb 2020 17:35:01 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nick
 Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] mm: kmemleak: Use address-of operator on section
 symbols
Message-Id: <20200220173501.0de88326911e41b15e27b62f@linux-foundation.org>
In-Reply-To: <20200220051551.44000-1-natechancellor@gmail.com>
References: <20200220051551.44000-1-natechancellor@gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ai5nYwXa;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed, 19 Feb 2020 22:15:51 -0700 Nathan Chancellor <natechancellor@gmail.com> wrote:

> Clang warns:
> 
> These are not true arrays, they are linker defined symbols, which are
> just addresses. Using the address of operator silences the warning and
> does not change the resulting assembly with either clang/ld.lld or
> gcc/ld (tested with diff + objdump -Dr).

I guess you forgot to quote the clang output?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220173501.0de88326911e41b15e27b62f%40linux-foundation.org.
