Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBQ7LZHVAKGQEA3F5CSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DE68B288
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 10:33:08 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id l27sf6197170vsj.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 01:33:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565685187; cv=pass;
        d=google.com; s=arc-20160816;
        b=01LLwFXBn9fPRIZRdP7Vc21n8Mgi+dWRC2CfulpQejCNo2u0GeLVxyPxbEjr8J6TFU
         aoFoWL6cVN6gEkEKgE2TcpIMzphZ9xLGBAzXzGsSKzq/AnrlP1F3zUkwlfWVoxq/pBBc
         LxbPYqoUSYC9EskJ+GsX8MKzv+wd0yTvHheP317Oj4FaJ0Zu9ZvVyRbEWecVsg1vfInu
         qxhh9QUQ6VuOYx1byOY4Gv0sYnbZ0owuzSD/87z/mKGx6ABQvoA25v0MH4QCh9GjR4jJ
         WiGPC86IJdOo9Y5qQMU8sDQSNmh4f9ctDB9bVfCfjVYc9HyKO28p+q6Ni4Sg+f2ioCXq
         fM9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=F8Yd10bqjDiXR4MXyTavKIua8oa8/WDJcUW96b6hKog=;
        b=s74ELi35hTwfXTdwYXw9OHKgi0TeGSKCMeOlk4gJSWGxj2VQFHecpnZJhxggV21Ab5
         VwYKQhplC1405gggmOAnaDu2pJ2Ps7B+e4oiIb20gVxUbXOnKxwIk3Bs5cpiObuXrLmD
         cxKp/p8K9gQAhLa07LYnFgMGu18uKj7zRQChBqd+9HfkQRy6crEZatP2mWQfhD0pccqP
         EKAmjkrqSV2hRCr1+XzJismOvwX1oMkmLtOQbqUWNFjHhSr2UTCqqhdNuonWptBcI8kL
         7zhzR7KzVLXjP7yrvH87H/4ycdvpAgIuXCODCdwaKeU5ZTfIIe3if9dmdH1bPO+PtOIg
         qe1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WqrCGZiw;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F8Yd10bqjDiXR4MXyTavKIua8oa8/WDJcUW96b6hKog=;
        b=aXDE3pCvYo44T5MzwGClhuo7jXzytHZ9+cJfmfH/G0p2s/9/7h9o2TICagReWiRjNm
         bxquEmpnBZ0B6EkrQELbX0QS/RF1IQXcR1YbWYDz476mWyVH+3ScHToE9yN2uCKIIVFz
         aLiW8QFO9ChnCs03eIdlMoLCyDn74NtiKJLWSoL2EglyBQzTUmlc8k2AAIyhH81/we5I
         6HUNMFBKnmmW0TczzchebFECS25xI87CwC2qJ8D0tr+p3blYQhkbd6ARtTZyT/S8wq33
         IyN56cCvdKUV0HBrd2mTVVLx97KISKWwDXkUsyML/OIUBRr9gR/Ztp22z7XvYalwkTwD
         QVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F8Yd10bqjDiXR4MXyTavKIua8oa8/WDJcUW96b6hKog=;
        b=DEHpuMgwvL1PgloWjza8f2s4nfNLF4A+fMqS9qw6WeIsVrqINebojfcHSxgMec7yel
         CF1LEuqz/iF7gtsQ8bFs9Ms9dV2eWJxNV7DcU6Zjddsw3XSq7uj8XfyQ4A277VsZh1v/
         mlzjj1E3OwNJpTZTL9iVGIQ7eBIxNGB/Q7vL2+JnnAlk0EHPILrzXTtQChZsAY9EFl2K
         OBytCxilHZmg6BLYVugupLPr18845x75S0u+J+EqgoRbBq2mjrN9hjHiTaa2tYQmNvHk
         5uUklqbNVUJkgBvOGJMVIXU5cFrScgaqcMqe5Qya3322Dz5p+H2uRdl68o0gTSa9mMCN
         vDnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWjs8XTv7vYuN7nDq/k1CUf7c5W0LHFXGWL0vyJiLeMpTLWeh2R
	dASr65KUxiKad2sD6HOl2+8=
X-Google-Smtp-Source: APXvYqw/vHZRO3svBftUamEzECDwf1/Hl9f6dqj1sNvEeOGzWOU7pDiCDm+h/X7ogfVCXn0JZAka2Q==
X-Received: by 2002:a67:61c7:: with SMTP id v190mr25723634vsb.165.1565685187826;
        Tue, 13 Aug 2019 01:33:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:664:: with SMTP id f91ls571449uaf.12.gmail; Tue, 13 Aug
 2019 01:33:07 -0700 (PDT)
X-Received: by 2002:ab0:63c7:: with SMTP id i7mr11536920uap.65.1565685187578;
        Tue, 13 Aug 2019 01:33:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565685187; cv=none;
        d=google.com; s=arc-20160816;
        b=hO3RvHeeVGAuolUr6X2+hHvcVizhsHvp9IB7ZD0ytjIlrDHxn76zAWX1v87aenE+oA
         Zz4EEvfKp7WnGaJ5hNUvlGtx0FA09kTL8bfjW/8Vt8DmxKjEJ69I8xN+IHvjwfifSFSb
         2sJ3dCdQEmDwlgai1VKDNrNjwFSDxYN0lwdJ/HbgEjDg7Y2aTDKerX0lS1xBDlT99pBr
         6JpPqqZt4GPulYlqoo+QKn3wL4dubRzfcxz+u65wVoj3liav+he7h1gHur6zC3ZjkgKk
         f/j8/OpUnbSk2Om5RiGe4QsDt4A2808HEGXit9Ta9jLKW53ehRXqzyYoqXD7FXK5H1xg
         IgbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=unpmMBhs4Ryw1cerppIFvtapYPS35xYcBeAoCDolA6w=;
        b=t8BNNcqy4CagHkIEoqNJmGyH/Iq7uNrkyR6YVOWNdc1WBDVzVFTyl6znKTqNJFOVKv
         Jgb1IdIzcyz8onYckD72l2PHWiyMCPNI5kLZo0spPHlwiCp5KRtbW2ZcydcPxGtolwB9
         Jr+mCBY+6U/B2X5/1dxMV7ih8T4s+xrb/01FiDHtBCp0B0sfn9q60vRQW+piDVGWjiWE
         lYaAf3LY4D5BOVE8IBWijEWYSX7sPBUcPaUBvJULJ988YlNbpPbhL6PP6TYW62C5Vysn
         x0LPLARt6lH5DCBjxDke6uDhX5rMKEwoUmuUbdRFn5g0Fa9CxQbjvRpRgzBuF7MereNg
         cHdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WqrCGZiw;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u189si7214876vkb.2.2019.08.13.01.33.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 01:33:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7A41620663;
	Tue, 13 Aug 2019 08:33:00 +0000 (UTC)
Date: Tue, 13 Aug 2019 09:32:57 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: akpm@linux-foundation.org, sedat.dilek@gmail.com, jpoimboe@redhat.com,
	yhs@fb.com, miguel.ojeda.sandonis@gmail.com,
	clang-built-linux@googlegroups.com,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	"Paul E. McKenney" <paulmck@linux.ibm.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Nicholas Piggin <npiggin@gmail.com>, Jiri Kosina <jkosina@suse.cz>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Hans Liljestrand <ishkamiel@gmail.com>,
	Elena Reshetova <elena.reshetova@intel.com>,
	David Windsor <dwindsor@gmail.com>, Marc Zyngier <maz@kernel.org>,
	Ming Lei <ming.lei@redhat.com>, Dou Liyang <douliyangs@gmail.com>,
	Julien Thierry <julien.thierry.kdev@gmail.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Jens Axboe <axboe@kernel.dk>, linux-kernel@vger.kernel.org,
	linux-sparse@vger.kernel.org, rcu@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org
Subject: Re: [PATCH 14/16] include/linux: prefer __section from
 compiler_attributes.h
Message-ID: <20190813083257.nnsxf5khnqagl46s@willie-the-truck>
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-14-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190812215052.71840-14-ndesaulniers@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WqrCGZiw;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Aug 12, 2019 at 02:50:47PM -0700, Nick Desaulniers wrote:
> Link: https://github.com/ClangBuiltLinux/linux/issues/619
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---

-ENOCOMMITMESSAGE

Otherwise, patch looks good to me.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813083257.nnsxf5khnqagl46s%40willie-the-truck.
