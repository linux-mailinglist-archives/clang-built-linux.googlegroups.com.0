Return-Path: <clang-built-linux+bncBDAMN6NI5EERBDHV5HVAKGQEAM3UKUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F1692146
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 12:31:40 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id j8sf432689lja.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 03:31:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566210700; cv=pass;
        d=google.com; s=arc-20160816;
        b=kn5ifQgD6nCBZVtNNSLS8AUkjNjqkjywT8xyeW0U5zShEHLMuQhpBD+CGm5BTbSCI+
         iOunIDudju6VoE7z+yy6FCjiMbJGBFAk865gfehNci4r+LXJ3Cv32aLXAHO7KHG2tYM2
         Jf4F+mdt3nrLT8CrBpXOka/zNuzEuu6bkLVvGjG5eeygwibUar0A5mR00Q0Zz+4Sxsop
         sURiRq4Cz7vt3ozhtJjPaqd1+KW01vHDif52Jp+9EQDDzyifBf/fX9YAz2o2nJDxq5vO
         ESaPyej9+T9TjmM/wc3mCTlK/epHu4/fzr0/wuHS6i1sdCK1D4baAdLmxVnnWJJ3tEU9
         t/Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cm5SPJvF9HYGTpLeAv/bxY4koB7TC/57tUAQhiDAof0=;
        b=1ApsvaRtWBdIQwlZIo0IKGKWtMHXZOigJED+KtjnQvSU1tMsBYluzoisNOJ2RYCcQK
         GwEbhoYK3dAeb6Xj3KeWP4qxraaQHj+Ogkv57jKCL3WV4fNzkXW8DL2a6IbOe3csCC+e
         NnydEewb04ULYDmbj4+eomzdhQM3ks6L+5Uc6cveQigk/JtbD5jEZafcA+reJj8AhViw
         W3FIoccnzIZIArLDtgLV8G6K0Kz4jL5KJY/piDDWhqVhWy3AAliahs4yn6LBnLoFVPsm
         xuNFGhmCoVnLGhePES9dD4W7vnUBnW/uGK6jq0PHeCMkD9EzlVcyzAtyRyD1kqbRTyv1
         mOcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cm5SPJvF9HYGTpLeAv/bxY4koB7TC/57tUAQhiDAof0=;
        b=Ty5Opm9LCCeTzMALSwdsDwZiqn4HXvEQfnUoQfVJGhz0hrtKygbVFDmyGLdPVwM7ce
         lHq8ikRWVjDEuJeLQhhGi50aYElO/NUfzR+Ct+rJwS7pIjCKVtmygcGBVaZVxsIwnL5v
         m761YX/1d3BTK0cgP6ax5t2Y6pDdaEuKRXaPybIv0gsDkRcywSEhcJyJ8a5zE2ManvZe
         2Ik+ZPBqdHsTB4dxlnOzahndH54GkBF1TbjPF5Qr/PV0mhQHvFos+DoH4U++rUIEqEuK
         qqSmAhrt2TGTAkcHVSHm/9h3llrs0FsImBSaUJiHTJAQXSV06yF6HzROoQ9/7pTKQpNP
         sYsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cm5SPJvF9HYGTpLeAv/bxY4koB7TC/57tUAQhiDAof0=;
        b=s6Scd6xg+p5kiODyPa4udmr1F6aESN/yCSU3gnMkabv+eu0PCkK11KRD9Yvv16gwPj
         0kNZgAe6T0BVn7Cz0O5V1YA3D5H7ePwfVOSc0unWexM8RNEdKGLCDjFEWkz+MPDHXaR2
         PzuqUq8z9QNzqmZ8OQg5DNwiEyVI8pKM48zlQWMKD3+aXl611qtLfmS43mcBmVbmxS+x
         T9+8tPITnPLjg73IMIRglDgFRUf8TNUT8JOK2BaapzYmhVIc/F3I2N+PImSzZs/Izs1n
         EPwdlEu+k1wVfLKw5bF7AZksy9thL4t7ZHm0Cp6+9AX11ctlkIadHnDMQZLQUdD74nH4
         XaHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUylbTkOxcBQ3eme9mu5sC0S3tfXnWrTUusxaNeWdCy75QMKfju
	GjFy4eDI3tMdIt5V90xDx3c=
X-Google-Smtp-Source: APXvYqzMPOy6EYWod3Uu/+jK7jA5LcJGXccOdw4AqU5dGuwbElq44dyPWlEL2H4XlB+0ctOrCR6/Yw==
X-Received: by 2002:a2e:92c6:: with SMTP id k6mr12508467ljh.148.1566210700281;
        Mon, 19 Aug 2019 03:31:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:91d9:: with SMTP id u25ls1652362ljg.15.gmail; Mon, 19
 Aug 2019 03:31:39 -0700 (PDT)
X-Received: by 2002:a2e:85c6:: with SMTP id h6mr12250047ljj.186.1566210699601;
        Mon, 19 Aug 2019 03:31:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566210699; cv=none;
        d=google.com; s=arc-20160816;
        b=i1WbvjRESnQtZBk7QsBUv4oQI8m/cIA6b1UlQqgxttxjV9j4QKZcn/J5+8GAdY8A4o
         sodAOkCp2lj0c70ZmuZsjnBIzlOGsZWlJEeCIzlAO6x6/X4fJqH1k81PFMzTl7G1149q
         iS5C5IK0pRzdzUw96AwbN/0vOmnpufukF7pF9o5MllLaQ8vAVweIWKgU7VsFwrAWZ0FB
         cT7tZsOc4+3bZAxBDLytBXZadsLew8qutRRJm38cMwSCz8ptdcOXPz680nktyNvUxqgB
         oIq17HPN8IF6mESmrm0psjQWTl7WOH/JnZpwpXbb1YZOEFoAe072lwnlgmkURVS5iUHH
         iUAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8FkkctsZ9PALYHdtYBRNwzSQruguyfRTDfaTlH4ZRPQ=;
        b=XVNJV2h6hNIW7/wZaCkE78cQGH6cbIo+UwBeGCd5vHxM3NYDlxkF4BDYAjRuJJkRAB
         qJX6AqV4Aa2TfkLswBLuQlOzrSLAWYLOQaYMd4gmR4xlq2InIiuBW0H4Cr7Cou3Sz1nj
         8jKEn1NajoUHViSzR39LpgkzU9JoYvyxjR7MtxWdp3x2HJMijQ8aBfgwZEIOV5apC4Hn
         TiYQtetSCZUUzVvC1VbVvbyBlzzUtTm+UCIyJUZRDEZxQ8x9oOfZsmQco43i4EVwH8cj
         Fxjr7XZVZRGnsfFPahvOza4Tql+MMRxHSCcNYW01koCmcS612APqV7XDo/c1vN1pgT+T
         imIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id b8si671155lfp.3.2019.08.19.03.31.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 19 Aug 2019 03:31:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hzewi-0001AV-VE; Mon, 19 Aug 2019 12:31:29 +0200
Date: Mon, 19 Aug 2019 12:31:27 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: akpm@linux-foundation.org, sedat.dilek@gmail.com, jpoimboe@redhat.com, 
    yhs@fb.com, miguel.ojeda.sandonis@gmail.com, 
    clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>, 
    Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
    x86@kernel.org, Alexei Starovoitov <ast@kernel.org>, 
    Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
    Song Liu <songliubraving@fb.com>, Armijn Hemel <armijn@tjaldur.nl>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Allison Randal <allison@lohutok.net>, Juergen Gross <jgross@suse.com>, 
    Frederic Weisbecker <frederic@kernel.org>, 
    Brijesh Singh <brijesh.singh@amd.com>, Enrico Weigelt <info@metux.net>, 
    Kate Stewart <kstewart@linuxfoundation.org>, 
    Hannes Reinecke <hare@suse.com>, 
    Sean Christopherson <sean.j.christopherson@intel.com>, 
    "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Pu Wen <puwen@hygon.cn>, 
    linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Subject: Re: [PATCH 11/16] x86: prefer __section from compiler_attributes.h
In-Reply-To: <20190812215052.71840-11-ndesaulniers@google.com>
Message-ID: <alpine.DEB.2.21.1908191229080.1923@nanos.tec.linutronix.de>
References: <20190812215052.71840-1-ndesaulniers@google.com> <20190812215052.71840-11-ndesaulniers@google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

Nick,

On Mon, 12 Aug 2019, Nick Desaulniers wrote:

-ECHANGELOG_EMPTY

While I think I know the reason for this change, it's still usefull to have
some explanaiton of WHY this is preferred in the change log.

Thanks,

	tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1908191229080.1923%40nanos.tec.linutronix.de.
