Return-Path: <clang-built-linux+bncBD66N3MZ6ALRB3W6UL2AKGQE65SM4QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id A175519E650
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 18:01:52 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id g7sf7753542plj.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 09:01:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586016111; cv=pass;
        d=google.com; s=arc-20160816;
        b=hB/8dgLHozhPzOTCkSZe+BivM+ow5+OEJT2Hvw70E8OSjE35rBOyEr/iAFdCqLlfAE
         X/NMtO9/89TrxKLZk+V9IDVG8tZCnhwvYwk1hvJvwkgpLMvkGBOi/Bq+p6W9sQvBG2Ys
         eteCdWgEK5GUlbSy8qKxXZYPfjUhM455iRwZ+pj6XXRKDZrgdre3b2wiJKs7OiFvdGAx
         CNqcS352Tn36EPdxjCkYcrHSR1R3hxpZI7j+0Q6ON60NRZ8k3pe5f5zVCkjqOu3/dDcS
         k/6BxHw47gYqV5wExS4uAm/rLfM+ByDNiu5REyxsD8K1lcgGZQsFLN0z+upflz3ZyAVo
         Ea3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2eZGc7PyYSmGrIsBCEarrq3RFBHNFUD6wiaKhZPxJoQ=;
        b=X8aeS0D/jjCWPL2IJQipC1i0XjZ35qWNmieEe8CsXGqC9QyTtbVSgLNy/xoacIuNXi
         pQij1TwhM7+QvMXm85aLoZ99aJM1nKHc3CbXkvjeQlAgLee6fPTfCoKoDRNmgxa6otEP
         LMcCx0cKJNflZYyjiTxD4Jcw+zu6dqxLj09mSn3vJLq3Ruv1e8UE8Ux7hGqb5/zgd4ZV
         2QSDm73PcnfY9kvDT13NCnI20AS6NwjX7AurMg2swWs2AekBW/TXHu89tE74k49kfr3a
         4VPWPUfGx5xYtUoaxgJ59190bj+SyxNBlOuavwtPguX57G12AAj9/vSHfmWHwL8Hkgq/
         FYUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=URMIfCs2;
       spf=pass (google.com: domain of oleg@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=oleg@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2eZGc7PyYSmGrIsBCEarrq3RFBHNFUD6wiaKhZPxJoQ=;
        b=CC7/vcI3uN5EIrYnDyePLhUF737roGdY8jGgMbSgyPHGyJe7ghIUYNo0xvQj4r5RvL
         5v3FK6YHPkhKu4+fvEYSK3+Gte+WwLhgunXxopx1bBNEtCUoR0D/hdWhiSLzjvBCV3Li
         UnmcqdMDEM+rzklmI+7SmOP3W3fS6fV4i4GKhhmMaM1vR5Sv1Mq6cSSWQvDMh/pbj5n4
         LT0SDT5TeZkomzRP/+G8nATT5T8ONxVslOQig/ARqPbZhoEruiXNI7N/87dVWiisLuNu
         noctHF+vopI4O+hHo3sm2VRtsNqLnwbb4ggVZPK9rVGfsAaAJ6XCCHp/64C1hlRoeXhb
         b4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2eZGc7PyYSmGrIsBCEarrq3RFBHNFUD6wiaKhZPxJoQ=;
        b=YOjAC8ImNdujn290HHL1BjO1ckz6S/uFlJxW/AfjrmiapxvM10hu3Jd7RuzJ4DNysI
         v+MqQb6YDj/E4lRM/xvkxdZ4jFL0eP5pfcLKwdiF9a5T8HPMdnUClPTQxONdwIXSCzZA
         o4hm8NaQ5+0QsYJLlRp6fXXugWyCLJ7poHGRIUwcRRf6pRjo2JUt7dQKgeILOfTqPYbK
         qAhKc+gUXQy5AzEKnbaqtgfkzhz5aNOWalAFggXYj8FqFD7v9VpAVSocNAhGkofKKIrC
         Bm9hVVlF19GbqX7jthlyRZwKv56RKqIGPgFI40WycjNlpyCWCyew6feufq+6onynpD0P
         FJPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pube8xsvT/gspuh3uZ/8IEhdtBRTh9IxbEgYOBHT/JxXMIkLkwZP
	P+mVOfJYEfK35GDmYRC03nQ=
X-Google-Smtp-Source: APiQypKs8iMjs4WvdrL5skaXfrEToWkth0tKaBoIAVtBExHOIzaftbD8bLFdEk4abOH1iAlvFrWT4Q==
X-Received: by 2002:a17:90a:3783:: with SMTP id v3mr16951123pjb.31.1586016110879;
        Sat, 04 Apr 2020 09:01:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9416:: with SMTP id r22ls8781041pjo.0.canary-gmail;
 Sat, 04 Apr 2020 09:01:50 -0700 (PDT)
X-Received: by 2002:a17:902:bd85:: with SMTP id q5mr13260120pls.326.1586016110316;
        Sat, 04 Apr 2020 09:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586016110; cv=none;
        d=google.com; s=arc-20160816;
        b=ypxplmoKzCFv1753WqZ2T2dGrXH2JNKVGSL+fP0ALeSUDaqUF1hxrEWSVoif1Cj+dn
         0ko5moPI/HpjmlodUTT5kv0/bO1zy54DYed/hggcIICl5ffZgLSM1N949v4Io4DShx5R
         qr/UcOSgainjxiPrQc2NYAbr8BuUCFQNRehj/voPXNpYgaSJsbhmTZZtq44PjQNNu/4s
         HFTUOcrAAYMVr0vK+fUEp3Zs9wYKAKlzEUwocXBITUSOtIUXOKyBdU6v/m0LTopo6sm7
         RV7IJMChGGewvSBhaQ6auUcBnfKRKJSEih3uqM0p8TzvK+Y2FJ6GAnMoNiXkTgNtTOKV
         6j8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FUdF7iY9SS4OEmK+NSy6HOWdmAoXBxog9A83yLakpIU=;
        b=uAfVy6GbZHSun+aB+fKJbvnLq5ABn6LuUnmbbhiksbMr3kipulc9sqHD49Mx8yYuIN
         +8Ony9x/zKZ5QdvNFUV0fLwqIl+cp2LL8pP5/lBH3koFie2g+NvfQIcOFF1jxVkmTZx2
         BK2F0N5jdNNAQtdTSzya3QdOyQcOgPKWrCfDWviAdkRkmU7UGau8prySs/FBO+Lqlnc5
         +sOGuVBDEG5MirrPHf/8mB1f7j0eSLRrooZwVWHl+hWV8wYFuPRhANEMKSLOUEIoDoEx
         15iU3vjLgYTgGZb6hKDJCa29HZkvmKKItJrxD+ALZTkqZBTd7XkATDuFvLMMqWMYyoTY
         Z38A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=URMIfCs2;
       spf=pass (google.com: domain of oleg@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=oleg@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id y5si693212plr.4.2020.04.04.09.01.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Apr 2020 09:01:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of oleg@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-BLP3HdZDO0Sr1HutAcntrQ-1; Sat, 04 Apr 2020 12:01:45 -0400
X-MC-Unique: BLP3HdZDO0Sr1HutAcntrQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D07218A6EC1;
	Sat,  4 Apr 2020 16:01:08 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.40.192.53])
	by smtp.corp.redhat.com (Postfix) with SMTP id 2443F5C541;
	Sat,  4 Apr 2020 16:01:01 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
	oleg@redhat.com; Sat,  4 Apr 2020 18:01:07 +0200 (CEST)
Date: Sat, 4 Apr 2020 18:01:00 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Al Viro <viro@zeniv.linux.org.uk>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Marco Elver <elver@google.com>, Brian Gerst <brgerst@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] x86: signal: move save_altstack_ex out of generic
 headers
Message-ID: <20200404160100.GB26298@redhat.com>
References: <20200324220830.110002-1-ndesaulniers@google.com>
 <20200403231611.81444-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200403231611.81444-1-ndesaulniers@google.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: oleg@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=URMIfCs2;
       spf=pass (google.com: domain of oleg@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=oleg@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 04/03, Nick Desaulniers wrote:
>
> --- a/arch/x86/kernel/signal.c
> +++ b/arch/x86/kernel/signal.c
> @@ -416,6 +416,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
>  	return 0;
>  Efault:
>  	user_access_end();
> +	reset_altstack();
>  	return -EFAULT;
>  }
>  #else /* !CONFIG_X86_32 */
> @@ -507,6 +508,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
>  
>  Efault:
>  	user_access_end();
> +	reset_altstack();
>  	return -EFAULT;
>  }

I must have missed something, but this looks just wrong.

reset_altstack() should be called when __setup_rt_frame() (and
unsafe_save_altstack() in particular) succeeds, not when it fails.

Nevermind, Al has already suggested to use signal_delivered()...

Oleg.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404160100.GB26298%40redhat.com.
