Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2UW4WCQMGQEABKW6GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id AABE139ACFF
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 23:36:43 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id u3-20020a05622a0103b02902274c59d552sf3877937qtw.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 14:36:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622756202; cv=pass;
        d=google.com; s=arc-20160816;
        b=JBPUZUNZoGdwXa4jskcvlSliTRPwz0BBZOzlIXKkbGcxaY/oH+LEfylDk/AX/0DVqt
         FADgLxdJdEBR4N9RO0jxcFAeO005bQ3GEWBL9Eb9EGPmbsW5quiAAZKa5zeJxixWCAKi
         zG1Yae+Z5swDo0r3pFsfreHVUOxHqokvr2fEwTSlf3t0jjB3gV/ii641EbM8J27igCVh
         Am/8dADIi+9m7RHenRQ2Vu6o5PR01MZW9kV/4T+Hm/rH0IxTraxA4D/7sLgaJ4C8N46N
         SWG4CCcSycWYjJhAlrjd8h/fBBKz91b7rhiI2xoHO1QD5ZCJ2TavlR7Mz1EaRWrSwWs4
         UygA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=t8P9ZdYHdruDU/GSV+yq48a8drlTkxyMeMPREH2XvVY=;
        b=W7MeMvE8V8lypQYJNSjPjMZSlY+cLNT/zLywBjbnjsBaalfk99YcfSndq4CwVTCN1A
         f5jMJoy+Aq1uPmDAo5EOZrrohVr72MUC80Dd+TD5pIYf4buwiQz7N/76xZKq2UK7Q37R
         p6zOX1DAKPPdukUJ0ZxNh27W/LucRnYbqoFYfKGpNqyKtnkVFbkWy++b9kTIeNfIdSuZ
         RDU+/ffUwS/E/a78Hxd56yBP+ixPTtgVcoQkdgcBNT67kxeNLj9ChNxRAdfHOag1pnN3
         oWQughcO0TUlTGHzMpXhcBobPN4HlYv4FYldVOgCYQEHAzb2M9+c1OLANNI2O8u7KPHj
         hXGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lgqohSGQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t8P9ZdYHdruDU/GSV+yq48a8drlTkxyMeMPREH2XvVY=;
        b=rWoaTpTKUoAfQpwJTX1GvbRsq8It0PV6ZdnCBh0Sis36vEx7+WYvVrCYa5E6H+5uGS
         RrjQuE2HUSqGaBNOohv9b+CHWZiqzXnJJfxSmILTX+opVeWH+eTfpq2yw5B7tujVEnXe
         FgCchKSLwz72P661BdMB4DWXQzWbrrrMsPTHk2V8h32qroqxZhQRUCF0duyDH0roxoji
         SBSZgvCH4qwO0uUno2lSWD42wvoAg0DKVn9xN+CvPa3H0wfHxqilL87gSgfOiWU+n6oa
         QUNngxxTjgwF6so7UMhvkNE8P00O9GtBbMNUAzT8waY6zgbJM/WNgOJqm9ozB7E1Jnjx
         9D7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t8P9ZdYHdruDU/GSV+yq48a8drlTkxyMeMPREH2XvVY=;
        b=gJCPY8W5hhVhyajm01Zkk5kLl7dTbZ3BSYyUiPQRMaJjvtrvaIgK/MrXb0/1zReo3l
         2H41uJmQmImom0oAhzruFrvHna8KLvmEMTPhThUqAuICgRcInmyrisugjm3Tk+UdnTzD
         srjVjbON8neM/faHQIIUkMekBh9w3HZJ5JQlbs9d+WYbC8WRNAQeRdC5AqNJNUNrZZHF
         0eMaeUV9pz+0L4VOdKnjJJHt52DtgwxeIsy2k4kBlyTR8jrOoPx6VFpTD2mrgvb+Xf8W
         jhKWlN7aVC7WYWgHHvsM9NXPjUTktZnIrSqKUXEg1+97rfd4Lz6WZHnBgzOY5LSWjDmb
         yv6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pZ/n2ISCn15wwthTAz8uDn45AtFfKWb2iMLYm8nwMPGEhxOgQ
	kCvMShfbm+rxQnhQEoB+QRw=
X-Google-Smtp-Source: ABdhPJxIpOQPle7aq1X2D1lZLk1+JAJqMZdXz3vdN2S0489ow0QbdeC5tEcHiiphXd7jViYDE12gNA==
X-Received: by 2002:a05:620a:1126:: with SMTP id p6mr1402922qkk.120.1622756202462;
        Thu, 03 Jun 2021 14:36:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:554:: with SMTP id 81ls2790832qkf.9.gmail; Thu, 03 Jun
 2021 14:36:42 -0700 (PDT)
X-Received: by 2002:a37:8386:: with SMTP id f128mr1329878qkd.444.1622756202029;
        Thu, 03 Jun 2021 14:36:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622756202; cv=none;
        d=google.com; s=arc-20160816;
        b=M9isxkkz4VRAuCQ+5Af99mxuXvtEJ+5Oqp0ccQrxW6TuNy8pwdnCf4RlZD4jR4AV9C
         g56oJCGDIUMrptqZ4lEs5vMe1hKavu32lailZzp/lDxuMjX1MIROkIiE8vQZmxgEIafd
         1ya8PF3e4Q5qXdAayT7zGymnB++qBiku6Jr4Ucza9AOND76vtTws7BSQH4vZDaBYIF25
         SEzHd6/2KWEarYj0KYD1DxhDHA3KRJwP5S7iXdOzrVFaGpp4b01o6Hpo7qIUXOjpUc8X
         vvQPhzY7D/zeeLkgrCToqiV86km/pt4dytjyRhpTAsSRBUdvKMbZjE6ZBEw6yg+KYP4V
         8n2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nsEYgPaJUz7EVWH3YiQYc5RaSd34Bs6YlEnQfI7OJp4=;
        b=DJsll69KxXTywuigo4lFc+t6DHoIjfRUQ6ai3ywKhHLblfZKr98u93U0yw3V11jwoz
         n4EAu1fqFHG5AaNSiPVKDvXYiv3ydh3JCblhEHLF6swsOPHejrf+D5bqax1zQ2Rs4Qru
         x7vVIunnE2jKsOqjFN+gaM4HDBTO7RuWnViyVvsDbwkkMkkeK9bHEAkYA0XKm8Gfzw/w
         XXWJ0nyzbkVdvZbVdjFZndvDsnokI2bt0LuBEzAhMy4yp55T/w098XOvps3two2xFi1H
         i2fsxNlkgROlRQ2R1hAsGGV56+OQokgwodlYsMjMAodl+LKLwnzA5n/XtRfteDkemggU
         fQ8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lgqohSGQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id x24si434454qkx.3.2021.06.03.14.36.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 14:36:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id q16so3582022pls.6
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 14:36:41 -0700 (PDT)
X-Received: by 2002:a17:90a:fa4f:: with SMTP id dt15mr8964966pjb.30.1622756201319;
        Thu, 03 Jun 2021 14:36:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z28sm35373pfr.76.2021.06.03.14.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jun 2021 14:36:40 -0700 (PDT)
Date: Thu, 3 Jun 2021 14:36:39 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [PATCH v2 1/1] pgo: Fix allocate_node() v2
Message-ID: <202106031436.132E0ED9A@keescook>
References: <20210603133853.5383-1-jarmo.tiitto@gmail.com>
 <d7e94352-0b24-1ab1-8b54-b6ffd4347963@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d7e94352-0b24-1ab1-8b54-b6ffd4347963@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lgqohSGQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
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

On Thu, Jun 03, 2021 at 02:14:24PM -0700, Nathan Chancellor wrote:
> On 6/3/2021 6:38 AM, Jarmo Tiitto wrote:
> > Based on Kees and others feedback here is v2 patch
> > that clarifies why the current checks in allocate_node()
> > are flawed. I did fair amount of KGDB time on it.
> > 
> > When clang instrumentation eventually calls allocate_node()
> > the struct llvm_prf_data *p argument tells us from what section
> > we should reserve the vnode: It either points into vmlinux's
> > core __llvm_prf_data section or some loaded module's
> > __llvm_prf_data section.
> > 
> > But since we don't have access to corresponding
> > __llvm_prf_vnds section(s) for any module, the function
> > should return just NULL and ignore any profiling attempts
> > from modules for now.
> > 
> > Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> 
> I agree with Nick on the comments about the commit message. A few more small
> nits below, not sure they necessitate a v3, up to you. Thank you for the
> patch!

It would make my life easier to get a v3. :) I agree with all of
Nathan's suggestions. :)

Thanks!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106031436.132E0ED9A%40keescook.
