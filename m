Return-Path: <clang-built-linux+bncBDYNJBOFRECBBBNTXLWQKGQEA6L2T7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id E88EEDFD31
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 07:54:13 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id l4sf5890734wru.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 22:54:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571723653; cv=pass;
        d=google.com; s=arc-20160816;
        b=wGTNary2DasCZJ8f1IwxsPAbof/0p/zeZaP2EwKwgFG9Sjgl0SxgXLA5g3j9kp3xuP
         jTxbgDlTIpBbYaBX87daCHJW02ngHCSquOdRtQf+seEslBceuwomSrRy0/AjlMsYxzRe
         bSC8lkz/2Czw0kJsWZaDaSbopzvPzjD+mrARPdYXEYFUe65kUOAkoW1rqrPYdeKVlm8J
         uKIinFMTkrHu+sFuv5trAMI6BoxEGBJ4TEj9P/ra8ZYSsK02Qw0bWtIuf8Qlr+ZMyzUa
         ReuV7OYzJNzMrFk5KIXtfInoRXPljkX+K4HJCzQJKfqhUMsDIMe84vswHJ1mKMHQmeq+
         Q3hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=JN+F/WKBdxqP9c9juVBWHOYlRBnvRPKebTbBjQ0gTJc=;
        b=svAhC5LaBGUnK7qp/GSJG4VCTIh/lNgquGojtbgMzFrgik3gU4qgJa8PfgjT7ITgKK
         CY6DBgvgXx+2mP/uiPR2+7d501Dy1o7T3qtIE1/OZhXN42NS1XepKQ7XNI3wWA6hf9nA
         JkZjTKKbeIRPX0mbZHkyf8vpDUam9Ch5kt2kaLnNOqF06mWRmE0piNPLb56aq2JH/ZkE
         3JRzGwPPZrmJMZiRTwwdxvDTjabNtKxO+KqNvPQHEG/SwI/CzmVj1BA5MCU5+fkbc6nh
         sJb8THRzFwnO2PAU0C5ux4l8JxwqdklISF3nrhJwogqIKIfdCHj2+8a7OPihdyN9nFyP
         OexQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="VeZ/77yC";
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JN+F/WKBdxqP9c9juVBWHOYlRBnvRPKebTbBjQ0gTJc=;
        b=krbXW0J6gixKchCByAxyMuC8N96vAZDv5Op/TqJvxtogHKKehJiIj/0SwIuNysL70r
         wkZugfpqhHFViuX6MuHURhogEmry/KE/h+kn8rHeFy2i6CAI1EJcjS0LTge17JykrOBJ
         xoosaCo6PPGqjastcEEK9QntjeSjMrTx80qYaaUL86pS5OPMe5U0CkpIR9seRXs0Trz6
         JKRMi8CIhaTm7Xq9oNdXMv/Wg0sAgXrwoWz1/WvJm9l7rpUr7GNQ6GIfrH3X4Ur6SVYP
         Vh+NDPG+kQ6+tZnpOMDPaRqteFJwOgIuiAHvCNy2zEE4lq5o/iGIBHDNdt/aQiRDKVcI
         5lbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JN+F/WKBdxqP9c9juVBWHOYlRBnvRPKebTbBjQ0gTJc=;
        b=f5VNPqYu0fklgrgzW5uVc6S4kntf0hMzATXaCgu8nVTQhjr7ZjZ/yEFcn+muN/wyBw
         1tw5m3D3TuPz15N9P4rolbAH1h/gJDy1kQwb90yJcoNxy+MY3XCJMUZE31zEfYRJhtiS
         ZS7xxT3GZzkUqaDOOmYxp5va+LzCynJZxM6PkpoJS6spTJOdMTRyFhQoT1+AqhHILbVQ
         5C9EeiSQARBd2sNBAPnF6b1//du/ifdF4oh6PuwAmzD4NXIWSskjprIUms4wxanIyTnj
         GxG/+4KvzSkx8ovZeNJBJO+4BpG+i5E0B5yWCOOC0ILDXVRjcwWharmmKqzioR7yttHB
         5DhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWBYK3vxEw7Q6YU9ZGqhleQlBID4i4qdUgWHxVNHKfWAt17gCu9
	rg5PSTRc+VU8ImtPeAre/EQ=
X-Google-Smtp-Source: APXvYqz4er9Eo2wj9mr+DSfCrp5FZCgwfreoBL2peqr7Ihq2wh7Gp9KFB8QfL3vgBOS2GIKx0bIRIA==
X-Received: by 2002:a5d:44c6:: with SMTP id z6mr1594704wrr.313.1571723653627;
        Mon, 21 Oct 2019 22:54:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db07:: with SMTP id s7ls8534464wri.6.gmail; Mon, 21 Oct
 2019 22:54:13 -0700 (PDT)
X-Received: by 2002:adf:f74e:: with SMTP id z14mr1819194wrp.84.1571723653045;
        Mon, 21 Oct 2019 22:54:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571723653; cv=none;
        d=google.com; s=arc-20160816;
        b=yXh6SQDA9cQ1rZkDmuO2KAN5YzOkOqKuaR4R0al5WuKBML3oeH2sDLnZ3q6YPH0Oiu
         GqctwKBY4DJgxKJfCpr0Kn3erM/ZRNGAfgibqy7hJveNCdN6BljasqaPl5oAWUJ3x5fb
         n1rrTjWZoDF9OMfNCYnO3CL0y3NlotNrg3PjRVzAfZWAUaNSpOZpUnIL24YHoDWYlfDi
         C9ufjBWP+sQOBYGERXVwVzVp170K3OG1FUDqhwp0hwg6N6avN40oGfnmgGkW07CFaBTE
         i3Nf/lM6+41pe3W2kIaxwCwP+vCPkcQDDGlCjVCrTasJhE8yp7UfTy787qd1PE9bncsN
         1Ydg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=70+N4pxkreRk5D8qTuATktL5M/ApNQm1mVe3QKo4Ow8=;
        b=ZHYt+vqDM1wBIWke07l+BToY4ulgfYRddhFv7STy39kPQ+7S7/URNc54VpOGCZTjKg
         YvGY2yfVEMf+AWapCmjWUjAsPG/RJgBPfGhVeMv3Vkcy2xoxgMRUAN79H6PpqAr7OA6i
         jfGoWrTYkS5XfSpGZjtBxH+rEWFGRBNWpVMPnwUOklwi6gHUxzu184iISWdMOFKq7WtW
         ennn0zKJkRn471Pft6y9+V1yNqUO64chxdD+OBOSgOQIUOINmk32uInRrAUAFFCXJeEt
         MCqmQJhhxIVQ2fr11KDu7jzZkdc8r0NsM4NsP5Aj70F9d3oYbRM2jg22BXUL0v4GUcuf
         eKHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="VeZ/77yC";
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p12si782034wmg.0.2019.10.21.22.54.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2019 22:54:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id r1so6662364wrs.9
        for <clang-built-linux@googlegroups.com>; Mon, 21 Oct 2019 22:54:13 -0700 (PDT)
X-Received: by 2002:adf:9f08:: with SMTP id l8mr1573796wrf.325.1571723652654;
 Mon, 21 Oct 2019 22:54:12 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-15-samitolvanen@google.com> <CAKv+Gu-kMzsot5KSPSo_iMsuzcv8J1R5RLT9uGjuzJsxCVUPPg@mail.gmail.com>
 <CABCJKuf-tXu2ZhBMCYTHP3BU8g1i-0GGd7+YvyTDUc1kH2iZvA@mail.gmail.com>
In-Reply-To: <CABCJKuf-tXu2ZhBMCYTHP3BU8g1i-0GGd7+YvyTDUc1kH2iZvA@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 22 Oct 2019 07:54:07 +0200
Message-ID: <CAKv+Gu_b6eCy4BbM0xFBgL2EzW+eP5rH+wTOgNCO=ai-vb-WWw@mail.gmail.com>
Subject: Re: [PATCH 14/18] arm64: efi: restore x18 if it was corrupted
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="VeZ/77yC";       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 22 Oct 2019 at 00:40, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Sun, Oct 20, 2019 at 11:20 PM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> > You'll have to elaborate a bit here and explain that this is
> > sufficient, given that we run EFI runtime services with interrupts
> > enabled.
>
> I can add a note about this in v2. This is called with preemption
> disabled and we have a separate interrupt shadow stack, so as far as I
> can tell, this should be sufficient. Did you have concerns about this?
>

No concerns, but we should put the above clarification in the commit log.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu_b6eCy4BbM0xFBgL2EzW%2BeP5rH%2BwTOgNCO%3Dai-vb-WWw%40mail.gmail.com.
