Return-Path: <clang-built-linux+bncBCIO53XE7YHBB77YQD5AKGQEYHU7WSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E2224E2AD
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 23:28:33 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id z16sf1662222pgh.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 14:28:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598045311; cv=pass;
        d=google.com; s=arc-20160816;
        b=toKwXCFJQt9cCt33Pm9HUIU6U7g+Q4HEJ/sswQADjqM1xU3oxLoUJxdc1/04gS1cXY
         kqdX8qciPi62Bs0Db17XdCV3qZqiL3+/M5KXaU/JlOjpgtMn8mUUeNcMN0Tzf4qiHF0H
         XJVD5eIRo0uNmkCDiEd7RY2wsCA1CBZdjesedNdCxldO2z/vEFihwJM+E8dD7qQX+hAV
         vMbsE7txTvZG+XadPPWESntwas/vY7Pi6qXOD/r8n2KlTqpJu4ZF+Y9xnyzn/bNOEZH/
         J5LvutwQ5LYp1AftpXCx19PHVOUmbEXVJJA+VX+NSgsOrlu/cBALTulbIVVRd8ghds42
         SA8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=5shuA5ZmE8x+JVESVvgS3Par4zK4D+zOU3RbsqnKPNY=;
        b=NcN0PjTrnEImBwCPcLnsS0jEii6eMj5sSb3G4w0MDRmUCYKtdo1WYt7T5VRmgB5/Hj
         IaCW3nsdqfzCcsthmY793lQZAGgI8S7RU6XxoehRhLWzmmiZ0M8kAkJCu1f/QVB/t20L
         c5PE/9WFCoiSQjOIL2C9mOYSNNOyonzlFUzZpySSy3wpuIv7w0OSYp++rJl5hbSitq8i
         M5/DAaw8XQBTQOv1hhPXlxSr05Wz4nhEOW8Uvgrjf/GZH/vAfjI3zIpMqo25C6cuoQX5
         EZlm/tdA0ptHs7oyQfYzZi5M1z9rJ3PQ5BidmdsKkiDxs1fCPpzbrEepAgnjBjNrAwIf
         DrTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OoMfAjUZ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5shuA5ZmE8x+JVESVvgS3Par4zK4D+zOU3RbsqnKPNY=;
        b=oI3tyB1oyh73KLOT0L7ghJ1LgfvWrVJrhFF3Q0LwzGKQFy6nvM6luL8a2PdtFOGsln
         nH7VtD+dKrxB2gJm73YdbuyUAlN+08QL0o3yaMW6o5v5X0cnrNSCsaoiYE66zmBQTRzq
         nB0QElX52uOMyjwixvyz0n2zaWA/sEFTK2NqSIG+/dUJdKg5ewCBYsSRGUs8qgagP7Ah
         DBYVpWa7ERxBi3PjZd45sazeUjDpVFHbAeYvKUzRCKHmKa5JET5A/duuL/iWO06n84Pd
         5QUZZ0oruXxO4QNy7N1XO2ho++tCChj4TAu38/qGRJeRNNQJFNCM5jLSwAtCvN82g8q7
         sHcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5shuA5ZmE8x+JVESVvgS3Par4zK4D+zOU3RbsqnKPNY=;
        b=aT6R1GYvMInH1mUN5r7lcXOcwLXzHI+7lok8bMYicfYMr3AWp/L1Hx7PGHoTcC/23c
         Vmvtuc+O6T9VGEybMwuTxZ+kBeZfMKBMKA+qtKeUNdlxRs8tE2kwGjXii+Iyfqi9KPaZ
         yLS8IuzLCIH4gvEa9rXaYIxnuZs8/FtSNJ2kFnfoxgMQbF4QLJKnjM9bUAmGjtnmFqlu
         dgmFTE5ft2GiCv1E8FGphUC2Qoc+Q6SQAh+8ZKLzAcRx1ioeBxoFib3G73NgKUylQT25
         Qwxt/Y2t0sXOpX6vS9vPycMCuAgrVASh9tSIzVsvm10vZyYgqHjBQpuH/oEYniRejx1o
         UPOQ==
X-Gm-Message-State: AOAM531zd2efPIY8SLxndT/8XSAMh/GHJM8DFIkqXSnIFPMqONWZULYs
	d6qeshhdV8Cj63QSw8iWCQY=
X-Google-Smtp-Source: ABdhPJxQylOuRfgCd7eLMlANaz1erRIbT+44TujHPmO43Lo7Xmo4vbUtwRHJFQS82OtLvTT7V5MWEQ==
X-Received: by 2002:a17:902:8648:: with SMTP id y8mr3789695plt.91.1598045311782;
        Fri, 21 Aug 2020 14:28:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:88c4:: with SMTP id l187ls1149732pfd.6.gmail; Fri, 21
 Aug 2020 14:28:31 -0700 (PDT)
X-Received: by 2002:a62:8cd4:: with SMTP id m203mr3968863pfd.74.1598045311277;
        Fri, 21 Aug 2020 14:28:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598045311; cv=none;
        d=google.com; s=arc-20160816;
        b=Wm1zL4aM129Txj/hry8SDVteai7PYX8/+sxUtdTyjk/2GtfWlcFz4aWHbzIz8aYvV8
         6+Po/5PsJdIXwsCbi4vY0qAcsRnXexLcRiWcpTxwYJPnCBPuQMsa9HxzzKX+OcovsLcj
         7StN7jYubJMCvhj9CtMZ8RYRJtWT+RnEHLC8F0BXsgSPEqj/uOiYCMErX8iR4Xwbg80Y
         cE2EtWUYRTC/zLRb3Diz5bRHKXZeF9PVVmp9VXigIHKHbC3XpBnKYC0vS3j/dIk8OpN8
         nVYmoAr5cz73beHuAFIz+VSmzGoKkuM4ZP5EppBSMQfBgGrI+0Z8qXHuywuyfdl8Bkbl
         zIVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=u1w1dHewQ24Wh+EinJOH0pHgm/+gMZl7ydhUDFjuxnU=;
        b=mzbsaL61JU9f1wixw5BCNboXx9+mi9wvRuefKjllhoXRyoc72EE/zuRcDXIHnqxGCe
         bHjVCiNXDb4doS506lGJYhsP54ep6sucPJDRYaHa+24D8Jl4FqUsKl/dA65DxpSUdpk9
         5sq7xk+H8QIFx+Ewia7sqfEZI7cNai2hO3HFkq4iindjkSTM4nFHdNMduNuwKgzlMRQP
         OW2JfQ2t2Jcxf4KsbYjdGshwusjDn2PLr8/5cR2VHMekzDGJmCkJ4pLcwCzlBH3jrB8K
         8gIsizWjnBRgDBn8b05aHfqvDOkslqJCeIenAzb5+IRX4myGoE4EcEOQJiBDy6Ds4alB
         8UWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OoMfAjUZ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id bg1si150897plb.5.2020.08.21.14.28.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 14:28:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id h21so2237790qtp.11
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 14:28:31 -0700 (PDT)
X-Received: by 2002:aed:27c8:: with SMTP id m8mr4565676qtg.302.1598045310404;
        Fri, 21 Aug 2020 14:28:30 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id p189sm2823699qkb.61.2020.08.21.14.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 14:28:29 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 21 Aug 2020 17:28:28 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Ingo Molnar <mingo@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 27/29] x86/boot/compressed: Remove, discard, or assert
 for unwanted sections
Message-ID: <20200821212828.GA1741495@rani.riverdale.lan>
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-28-keescook@chromium.org>
 <20200821200159.GC1475504@rani.riverdale.lan>
 <202008211421.47347CA42@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202008211421.47347CA42@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OoMfAjUZ;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Aug 21, 2020 at 02:21:34PM -0700, Kees Cook wrote:
> On Fri, Aug 21, 2020 at 04:01:59PM -0400, Arvind Sankar wrote:
> > On Fri, Aug 21, 2020 at 12:43:08PM -0700, Kees Cook wrote:
> > > In preparation for warning on orphan sections, stop the linker from
> > > generating the .eh_frame* sections, discard unwanted non-zero-sized
> > > generated sections, and enforce other expected-to-be-zero-sized sections
> > > (since discarding them might hide problems with them suddenly gaining
> > > unexpected entries).
> > > 
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > >  	.rel.dyn : {
> > > -		*(.rel.*)
> > > +		*(.rel.*) *(.rel_*)
> > >  	}
> > >  	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
> > >  
> > >  	.rela.dyn : {
> > > -		*(.rela.*)
> > > +		*(.rela.*) *(.rela_*)
> > >  	}
> > >  	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
> > >  }
> > > -- 
> > > 2.25.1
> > > 
> > 
> > When do you get .rela_?
> 
> i386 builds, IIRC. I can try to hunt that down if you want?
> 
> -- 
> Kees Cook

Nah, just curious.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821212828.GA1741495%40rani.riverdale.lan.
