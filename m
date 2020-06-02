Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBOFH3H3AKGQEZ5YS7HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD6D1EBD0C
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 15:27:21 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id k91sf8194272otc.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 06:27:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591104440; cv=pass;
        d=google.com; s=arc-20160816;
        b=JtgyqgjFGNyOfw5qQ6JW9lWQm1a1rKNMwluFChPbuOc/mXow3eSjW0LCN9UcEgDlvg
         67flzQAP+QLLDVwiao9iV24sYCT/zVDK1xzQLOzHkcET4aVUNND/VTpSZpSAgEtUFyaG
         Bz+0uiT8Cq1JPOnujQyFNoJh8aymVLIKZbQEBAP6pzGj7n5zjLG9WVhUiL5jpFbJVrdD
         GY8h2t169QKwPbnX2RN/uNGP7qmETKsHUGKXiosgOG65LPlUFpeGuuclQez0KpPAxiwk
         N8ZO03PrD/pwN/bJSp1TimKgqqqk1joy17VFt79akxq60AWpWKbjXg4x/hkf10ZZWlZ+
         prSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3RtusyxI07AKjdYYi92B3vLC4g9+wiaNYeUJof1jNG8=;
        b=X9Ky4cm1/IY2LaeGAnNCMXYTRGM1FatKs5BYwLME+ZrX13kzF2qG1wlwXUAz3ccFlO
         y4AQ4y/btQSdOkFqnUXRYjp8lV5KzJ9uVQvB8830Zf2I+WnlAkLE+JaR48o/FcGsQPZC
         IVLsEHRA8VWnibTv4VXW8mrm30BCkw6TGXOcMneg0JPi7B9F7jg8ZZKWDeqzcwcJsDI2
         oFVVo+ZE/dMcxiuKE53718FFJIR8UHWG3ipKJ5NivFjskRSEsb3pzEbBRHW5XcU7zct/
         GGtb3+jsAqMjpgSF8kugwLkOA/z2Zk4rVp4lvarHd6lg0cOZGLSVvr8Muf0VZn4/GW2r
         gTOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="M3J4/69u";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3RtusyxI07AKjdYYi92B3vLC4g9+wiaNYeUJof1jNG8=;
        b=pq1LFO+KmaYPwYBYtMSE3GfwAxn7DJOj9vpGbP3RmwZ2JdiaLcnxJAniTItSJBMKLc
         kBuCsTO0hjuZbI++uFW0+fiXBcZGafW4C+PCJDloPKg4TyyOLg5gHdXfOLTknrEzT/bn
         umYeAd5KSzpi0LAHtp4PJS2HSOO1gcZ6RWWf8FRpUKvG57KVbo/df/QNRSgbM3y4hbPV
         yoN3vyAVFU5n8OjOW2fgGDT1MS6XMO9WdJn3jrjHytwPDRSccsBIJdmMbDQZ2hapF+3o
         sAHBWa+g9f6pSDQDErPiHaTtNTy0vMM7N9PjxPqiHh0vmC7smd0V3QSO+Ya+1SQTsOOL
         wypA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3RtusyxI07AKjdYYi92B3vLC4g9+wiaNYeUJof1jNG8=;
        b=gYP4JySlF4l/88kqaa/wBqj2KCotA6vZdwxAWD0P9o88PsnRHxX+0IVzr9leFCQ+89
         JVrh88msmpI4NsmLdSSAJ2W/MLsWPfktW1CTZ2xyCf6RVUv57hJoYkBezTpOumiIH0B2
         fGG1KfMi29XLJNdV+jma37vvAS54+Fl9zRV29IVuiOBIFoSeb2QDXv8fn8sJguU3Q8Xa
         OfuwWxoFdXwJYZxO9UaSgIBIhjpOSB2/v2Oej44nXNoLHEQQeD2nMMEUtpAUreM8jJDl
         ap5iu6zb8oKVmouo+9UCl4m4f3b3O3rNAcrDMrH/Wk+3Eet6NIy4PMTKQw6mS4bZoobt
         +c+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532A6lfQRiqNj4uHMsvolM/56JWEABozjdq81k30sM3k+sWt6r7v
	m43KxJI9ee4th5AeeEho5o0=
X-Google-Smtp-Source: ABdhPJzxoQcysPsERuVo6Yw8+G/CjB4sosxSNe6x7v0G8gdiV5U2mdILkXmYzPBvdIIwgE5i3jrQnA==
X-Received: by 2002:a05:6808:ce:: with SMTP id t14mr2982801oic.59.1591104440214;
        Tue, 02 Jun 2020 06:27:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4810:: with SMTP id v16ls3378260oia.5.gmail; Tue, 02 Jun
 2020 06:27:19 -0700 (PDT)
X-Received: by 2002:aca:c685:: with SMTP id w127mr2967706oif.83.1591104439924;
        Tue, 02 Jun 2020 06:27:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591104439; cv=none;
        d=google.com; s=arc-20160816;
        b=GWVe+k3/7PerLecAvhbXUXHS6RxBwmZHDmsyRFyg0yeKpwXkTuwpKLIeC5asAuidT6
         PByOpTmxFmo7sDchVN3l1UGDR2a8tpEvX1PxSP92t9QT8jLO4uX6ZCC6SV3BoAXUqOkO
         Lo0CexJSnmT3gBSMWZ8TK7+IG10ECmzTDRa16WU1mwx03LJBg6uXr4bPJU1TFwAcwqdZ
         oWquPMyE4fWYJnKQAlsp/Knwc86loUeR/mKVNjnGJ5FJhmQnUSqS04s2/9cngKqqdKPc
         NDqqsrT5WkggOAD6lgmo98k5ufzRcb+nHKzQlgBVFD0q60MJIX9Y+p3j7/0M9BXhVlLc
         u5Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=o0pQY5Ii8PXeO0UpV8bNoE8fyQdiCbwa63Xrsl6aXGw=;
        b=dT1d70Cj+25Bjjx/qDZathEagLN0zQ3UrcyWsVb3l/wdmW9RuQ4fJ6s+SD1NXT7+W6
         i1c/56NXaUGY/5dXy2iAQQUbvOoo7NqDcpc/1t21mEejqEPeP6+rp3MDSvYORG4Ix7sT
         Z7a6fQ5+IMCHgz/ilKxrYBDWQnxDF82ioTTpsYLgdP9e4JK2HYLVt7dyjwX2QKSpdjCo
         MrC4ZjUtYTm9DJhm6l92TKJfFPiar4fr2bL60sYqMRVoWX9cvD37kROsygz9fz2kcw/I
         jStto6cUVqDITHMMtxUFiscl8qtQ7r5EVtM7hzbYeEqjvKw03RVwFOoGKbWbQFabmo+R
         JtdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="M3J4/69u";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id e20si142349oie.4.2020.06.02.06.27.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jun 2020 06:27:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-ZM46vsn1NMyeIoHsDFXStw-1; Tue, 02 Jun 2020 09:27:14 -0400
X-MC-Unique: ZM46vsn1NMyeIoHsDFXStw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D0FAF107ACCD;
	Tue,  2 Jun 2020 13:27:10 +0000 (UTC)
Received: from treble (ovpn-116-170.rdu2.redhat.com [10.10.116.170])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E6F76C776;
	Tue,  2 Jun 2020 13:27:04 +0000 (UTC)
Date: Tue, 2 Jun 2020 08:27:02 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Bob Haarman <inglorion@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>, stable@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Alistair Delva <adelva@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Kyung Min Park <kyung.min.park@intel.com>,
	afzal mohammed <afzal.mohd.ma@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Dave Hansen <dave.hansen@intel.com>, Baoquan He <bhe@redhat.com>,
	Thomas Lendacky <Thomas.Lendacky@amd.com>,
	Ross Zwisler <zwisler@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andi Kleen <ak@linux.intel.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86_64: fix jiffies ODR violation
Message-ID: <20200602132702.y3tjwvqdbww7oy5i@treble>
References: <20200515180544.59824-1-inglorion@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200515180544.59824-1-inglorion@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="M3J4/69u";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Fri, May 15, 2020 at 11:05:40AM -0700, Bob Haarman wrote:
> `jiffies`
[...]
> `jiffies_64`
[...]
> ```
> In LLD, symbol assignments in linker scripts override definitions in
> object files. GNU ld appears to have the same behavior. It would
> probably make sense for LLD to error "duplicate symbol" but GNU ld is
> unlikely to adopt for compatibility reasons.
> ```

Kernel commit logs shouldn't be in Markdown.

Symbol names can just be in single quotes (not back-quotes!) like
'jiffies'.

Quotes can be indented by a few spaces for visual separation, like

  In LLD, symbol assignments in linker scripts override definitions in
  object files. GNU ld appears to have the same behavior. It would
  probably make sense for LLD to error "duplicate symbol" but GNU ld is
  unlikely to adopt for compatibility reasons.

or can be formatting like an email quote:

> In LLD, symbol assignments in linker scripts override definitions in
> object files. GNU ld appears to have the same behavior. It would
> probably make sense for LLD to error "duplicate symbol" but GNU ld is
> unlikely to adopt for compatibility reasons.


With Markdown-isms removed from the patch description:

Reviewed-by: Josh Poimboeuf <jpoimboe@redhat.com>

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602132702.y3tjwvqdbww7oy5i%40treble.
