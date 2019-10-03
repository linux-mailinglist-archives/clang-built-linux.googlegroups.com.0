Return-Path: <clang-built-linux+bncBDNJTKEXZ4HRBDHC3DWAKGQEIZGPC5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C87CAB7E
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 19:34:05 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id k2sf1417956wrn.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 10:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570124045; cv=pass;
        d=google.com; s=arc-20160816;
        b=NlDj961p8wH4+1tr4WE+Yas4cr7e/lGe4o+9AGjPdaLKCjaVBapqY9bDii4/Zj8foH
         62xDCTvQoh7NqteGRWmHumECnwuNp0AxrxfQjOTbsXPG+BNxhOPnwqRQn4LMFvIv3LHx
         CDMpOC3KVNUAqYJfVFr6x6viaPBQzbeMYFk/U9SUzgSBi1Vn3H6rZcgXv+R007BFBlpH
         m1xoybmnvhZjwZ+XG6rJNOQvt74okwGfN+cSdSkN91/23BMDz7pj9NH1N86uvXiPE2df
         Pbkwewptlj0epHP0jttB/hjfiS/Ah3tkkZfeBbjhr9k6yeNYYhxeKNj2YqXdjAAMDf1n
         qYKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=luvsj8I/MTamfkkEuD4Poz0Chnq4Bepm46dtvJqiGK4=;
        b=zpnyC22Xad5pp7XjbyRwaJvPLLpW2fK+TwvGSnB2CLNnq+FZ6y/JOoMYiTuHUwUmCE
         uPuTjKp5COLfAib2h0eYliR7RUIPnOEJsLRgyFpdZJr7+PBciQNxQz/Z/QELqqQdHsKd
         IOLFbfTM0JIJr4q1iKqiNt+qtiZWzhKbfDKUN4b51nHPD2O/WEIbxFetVZBxZQ+Ycas5
         3KmJc4yE3+jlNanNmDc6aNz3ZBv3s2N51b20U3uH6Qit5QLtIRonc16R8CvMYjk9hU3k
         M3I7ZLcNUmZCYMqh9csDNpGAGRElYOXQ1U/5yR5NhtPzGXKrcqevzZJiPHYhlDnzx//8
         2sJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cyphar@cyphar.com designates 80.241.60.215 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=luvsj8I/MTamfkkEuD4Poz0Chnq4Bepm46dtvJqiGK4=;
        b=jgpYbfD/Vbw5ZuXMOLlpKSZBIr2sRUtqentn9TnAiROmS/jGZs8n9FacDt7NC/P8PU
         iNYruDpCAvxAE7LG42gexZG9/BySZMwSKqTFenSZ14pHtRIsU1U1ZJP0TgqwOaGTL0tF
         vjkJG+xyO2a/ztpLjbF+ApWAZd9cH5cUXgM17rLerzXKsAziUBvJq26ZPvZIh/PqrovA
         Y13yOAxuOXmjyimTeCit5nj2tlb2oE0lZHHAetH5j05jBNkhBh0bOcsr8jFj8O5imbzT
         XMbL9tqNKXwP1QdbLXNj/0JLPZCvj35X5+KSqDuQAkG78UvnrGRgzehQv8scsn5/G9la
         6WQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=luvsj8I/MTamfkkEuD4Poz0Chnq4Bepm46dtvJqiGK4=;
        b=hCm7nI/e68yhqKbd9zpKXr4hADARIHeYwP4irSIGmebeYd7ZBzHgL/zSKJBTnOEwOp
         mDNY25XvMOjgXzu8NTrKL7vKhwovY0qsFqNkIWdPrYuwYSnwd69C9l/pZ+j7oSAKxA0K
         okCjMWqz9xQOzcRKHv4ITUC7yqfL8c2PuQccE9EXtyD0XXA0o2dsQTv0//pfRMVPS3IR
         fx3/CVnoOUc/KqHKuieG8KvkX5xBtLHXTDGPuXpD5pJ6TJDIJJ1SBpzA3H6DMxV1D0Rz
         X2YGVUfKnFJNJn070MlXVHi6+yExAarZ08t+fXs5Ywlaslp5xkXJNRvNLshup6vaZtFV
         FZ3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWXKqOM4LQboybv8q62gs28rT83TZnFtuchgOktyfu7NZ5uW1A/
	i+ZIyEctvRRK/N5BZ3+qFOA=
X-Google-Smtp-Source: APXvYqzuJfpuLZaqbGVUyDZSKz6d1kwkuL//6Z5x8/zlSEQpgcWwydFph1lXzPcJdmL2GdIVHjrFXg==
X-Received: by 2002:a05:600c:2291:: with SMTP id 17mr7907943wmf.58.1570124044903;
        Thu, 03 Oct 2019 10:34:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9dc8:: with SMTP id g191ls230729wme.2.gmail; Thu, 03 Oct
 2019 10:34:04 -0700 (PDT)
X-Received: by 2002:a7b:c35a:: with SMTP id l26mr7990713wmj.81.1570124044427;
        Thu, 03 Oct 2019 10:34:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570124044; cv=none;
        d=google.com; s=arc-20160816;
        b=AC7ICkiuVctNjjlIFpYXhnqL6XfzUIY6hlw3R3bMjAwpCzz9TN5u0060lBZiDd+YCR
         71J4Fcc1QDgKf03X1MhUCE+fk/702K9ulOiDvZ4/wXRcbdCVmoOXvI0e1s06Vl27nPg1
         WvLYHPOnxsMV3M3wJkYhqlMM6ITnpf4QYfJqLXZbE1qXhUg/FlgLtOhyo0ZRKIdjogNa
         ppj9sX0YtuOPh/GKk/E8C5hnlXBu0sUxfTN2HdmZXLrLNXH4GOvOlcEok+O9QAP0Iwoo
         D1rCE0I1+egjpCLwq2UpM1OmXd51SVSYD7PYeVPmX9AnBT41F025f685Qsx55qXqOkN9
         nWZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=mCn63yFEsv7kA9RQLiAWpWH8PsMGr2gJGuKj3CUJ9t8=;
        b=LglkDS5Kg+wvbJCEcRFlVKOmE9894aEWT3pIoU5sdBauoQ4Am3qdQnnDIyP0gfDUJA
         xDSR4mfLd0ZCIPECtGvjXaA8aHjxAPRhUocds8/uU/25kC3oZx8aefhsmiPOZUgNE8Ey
         4nJhwHQtw3X/LzOHIdD/uNn9aXbkJ3mNVVCmj7RJtGoq91NP24R1nVUxSErOgTAe5YY7
         EbbMksDiCA3CXEgeQMr/y56K8ni/AXZKIVzed6eQi3k/FZ/8TU97Y25kO/lvbwJJwzlJ
         vgLAhnFcuqX71y3fSyNfB7D11xbjxg5zoZFtV5Y46DzAYrMArifr7OI4HETgdbaWYNYz
         Wq/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cyphar@cyphar.com designates 80.241.60.215 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
Received: from mx2.mailbox.org (mx2.mailbox.org. [80.241.60.215])
        by gmr-mx.google.com with ESMTPS id q137si448997wme.3.2019.10.03.10.34.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 03 Oct 2019 10:34:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of cyphar@cyphar.com designates 80.241.60.215 as permitted sender) client-ip=80.241.60.215;
Received: from smtp2.mailbox.org (smtp1.mailbox.org [80.241.60.240])
	(using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
	(No client certificate requested)
	by mx2.mailbox.org (Postfix) with ESMTPS id 0E95AA1BF4;
	Thu,  3 Oct 2019 19:34:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.240])
	by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
	with ESMTP id ZVLOBka5CkYJ; Thu,  3 Oct 2019 19:34:00 +0200 (CEST)
Date: Fri, 4 Oct 2019 03:33:52 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Christian Brauner <christian@brauner.io>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] usercopy: Add parentheses around assignment in
 test_copy_struct_from_user
Message-ID: <20191003173352.ai4wbllwo6lrxjju@yavin.dot.cyphar.com>
References: <20191003171121.2723619-1-natechancellor@gmail.com>
 <CAHrFyr4GFJHQLHOi_OuDVkhuKxfnf_VkTWk6MJ2Mn1EtWhpqjg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mq3doqufbzkhsyhl"
Content-Disposition: inline
In-Reply-To: <CAHrFyr4GFJHQLHOi_OuDVkhuKxfnf_VkTWk6MJ2Mn1EtWhpqjg@mail.gmail.com>
X-Original-Sender: cyphar@cyphar.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cyphar@cyphar.com designates 80.241.60.215 as
 permitted sender) smtp.mailfrom=cyphar@cyphar.com
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


--mq3doqufbzkhsyhl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 2019-10-03, Christian Brauner <christian@brauner.io> wrote:
> On Thu, Oct 3, 2019, 19:11 Nathan Chancellor <natechancellor@gmail.com>
> wrote:
> 
> > Clang warns:
> >
> > lib/test_user_copy.c:96:10: warning: using the result of an assignment
> > as a condition without parentheses [-Wparentheses]
> >         if (ret |= test(umem_src == NULL, "kmalloc failed"))
> >             ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > lib/test_user_copy.c:96:10: note: place parentheses around the
> > assignment to silence this warning
> >         if (ret |= test(umem_src == NULL, "kmalloc failed"))
> >                 ^
> >             (                                              )
> > lib/test_user_copy.c:96:10: note: use '!=' to turn this compound
> > assignment into an inequality comparison
> >         if (ret |= test(umem_src == NULL, "kmalloc failed"))
> >                 ^~
> >                 !=
> >
> > Add the parentheses as it suggests because this is intentional.
> >
> > Fixes: f5a1a536fa14 ("lib: introduce copy_struct_from_user() helper")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/731
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >
> 
> I'll take this. Aleksa, can I get your ack too, please?
> 
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

Acked-by: Aleksa Sarai <cyphar@cyphar.com>


-- 
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191003173352.ai4wbllwo6lrxjju%40yavin.dot.cyphar.com.

--mq3doqufbzkhsyhl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXZYw/QAKCRCdlLljIbnQ
ErZYAP4heG3krz9cEVZdwR0992zolXZYYA3cb+gwBXtyntW4tQEA7oYTckHSxzrw
2x9+2UkmgGKl+HPHYP3tiwp6I40UOQg=
=IFPY
-----END PGP SIGNATURE-----

--mq3doqufbzkhsyhl--
