Return-Path: <clang-built-linux+bncBCS7XUWOUULBBHVKTWAAMGQEUXY7N3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4D62FC2D0
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 22:54:39 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id i2sf11367949vka.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 13:54:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611093278; cv=pass;
        d=google.com; s=arc-20160816;
        b=cP0Tw2F18eWasZ+QuehN/BvSVIa9Lu+mTtIbBLq/Saa5q9BYHf2pjRiCVoQ71nEaTR
         6ZZ/ko9A3OJDJFEQZRLda7NO/0l7nL8gou84N9p7KQ9taX/0BfUvfZ+cUUxUAjzo4Db4
         c+nc+6vzkePaZDF2SdrTIw5oGqWZ0sAvxZLHi0rxjESPpqE/NgKceOEE6TkTwNER04JD
         vo5FUWu3RB3bkidTc4Mg1/Uo4WZnjtbGTsHhhBDDOOPZUuV5pDZamseTm+HS+8v18gkR
         auh2FMYgNBam0p69TR3PA5q6hzUuqHW9AAKzJvaQuoW6QEE10EcKBirY6MI+9XI+auz3
         ThvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=XBwVJFgWb/vY5m6o6xLhOINszquegfbKYL2to1hK8DM=;
        b=XfsvDOuN0RuD1lXVDFB46znnjYxyfXdD0NruJvBOnWHllQRNCSYmk4SvO7dUHbjygC
         eCLq6uN91cXZN9m+Z00cwyV6fasWWgEgVjy8IhJAAzo/6xdwLLIiy6mFDr43iomSn8Ne
         7PZa2CnnbhaDQmmlsnCmuNuqdbo8a31NVljU15aHB5GNl9eglT1YnIrZJGfKHiDTKV4O
         LYeC3qyg2/AsiIIpb5XXDD4BKUdK0eYuKWcVUg4pZZNCi4K1GQH1y9hWaoMAEhYvXLQk
         stvGylsNOmJfNSRilqXsQF3ZQuyt6Sq9AvkBPydpHw7Rhb4j8qgQX/XWH2ACPFUfgRp+
         ip+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tepl+SRt;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XBwVJFgWb/vY5m6o6xLhOINszquegfbKYL2to1hK8DM=;
        b=e5Eab4N8tphneUxSrlj2djAOXH5eMzj+MJOp7cDVaxJQEWpJmyy2i7eGYiN8U4qEmO
         1uERGYsux6Vn6oW6OmCRNEaV3iY3/6vAQTVjDmyWcbSnrIw3Hp+g4qLy/dBG6+JOlm2U
         fNWPdJ5P5O9SzuGdbpLsZ1Gzp8MIpFyBYDsBt++l6Tt6DV9Gl5tqjg5duiK+Mc3kLJP4
         7yYl6X23Ji3KGPrWKujEAEPqmb6ylEXomyt4qctS3szRnjbuuiksS0oixqY3Dgw8qG3U
         ZDE+rfkYc1dxKsz6a874z+7thKUlG0WubCP+M+EuD4YamEazDc3ua9LgdJyYonhPsadF
         PF9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBwVJFgWb/vY5m6o6xLhOINszquegfbKYL2to1hK8DM=;
        b=r0LcnVKNWgQrweVg8o7jYzmZwqpX7k7a0bXzTdwOEraDFCxTCdamfiSahCySjFmU1B
         w6fViQR0QQaWzf+MRzQUU/y6Nhi+DKo2RdlOOx8cSfJrKwQN5yStJehBui5SVa6ShNgB
         Y/E/2umTNMfclzj4q/FC0dWtrUcbRPYQcvDvHa93nogKA7KRvIq5wkpbKSQB9CWixi64
         39RKLA6Ywj/XempbZww5DLVDsPBjv5Kl21W1C6h0uLKXG1rNxahom4dVPTb5b3D93HDO
         TEdJ8qDsRq2szSPRGkbGcyujHb82u4hfxp8gZgOzPt4x/5UrETxHUNSFV/UvZmEDyCYI
         EtEw==
X-Gm-Message-State: AOAM530LJ+YlxBFvsPtDnDtkBForPfpwSof6lLmDv3j8oESwNWRaT84D
	Di4Vs5PVneqH5yJTSZ0rWCQ=
X-Google-Smtp-Source: ABdhPJwfGXDtEzLOvPSlxwQenjEH2M3ij7k3+qF4L+eTODTfgOUIoQnpuGs1ORhdqOSfEZhOt4kUkw==
X-Received: by 2002:a67:fd17:: with SMTP id f23mr4373787vsr.23.1611093278756;
        Tue, 19 Jan 2021 13:54:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:106:: with SMTP id 6ls1868191uak.11.gmail; Tue, 19 Jan
 2021 13:54:38 -0800 (PST)
X-Received: by 2002:ab0:6e91:: with SMTP id b17mr4287726uav.50.1611093278345;
        Tue, 19 Jan 2021 13:54:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611093278; cv=none;
        d=google.com; s=arc-20160816;
        b=xNckYKwnL6Oo7MrBFB1vmpHstdTG5Xm2DUBUlU9M3HkAu+VHOUql7kQYmZoYKCU6Vs
         M9PxqUyK9SD5odtCJy4w0n4xjFiBpZusgGmdwBYRn1IOzVUYx/DUaH5M8HtGwFUoEgy1
         6mLSMPSdqbGJ/aYxYOSmfCIjkYKtLtbvvRfqPf/pEMWycMxDnfcFXSizVmvD97pzisfD
         +I9KfuqVNY7hIxs4uAAeCdH7i6yrhZbKim2GMf16nImm7vdlBnXKxNG+b2iCMtMW93xi
         5919oOghIXYHOcP86klF65B/sf3LmzmWLdqKXQCdGJfkw1ivtC1q8m3Y6BXfkxP6E+fJ
         q8vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ikz/AmSfBc1ATM3yn6eVMtZJFy7xUct4YDoP+ueSRuM=;
        b=YqemV3uOy5/VqDI+fLnruVvoSk6lclolVdKbvlKGT69I9EfFetMcBlzNe+CVuitcB6
         uRxKqgbqEqEuscDgEMMEIHHjkFw8enGhsbZsWnendQvx7QVCJZrIcQ5wIv1O+SQE4jBU
         5934SrkpKvvQU7vXjvpmmW6v0Q/xmilqVcHMFeYqBcR0YeusSvSFS8SbdZergXhIow1/
         LSF4uXppfSwLCYL1aTQkDr0RKjEgDlYaYFbIrvjzzFvSXUMoOLSZezxt9R+s7JY5T7Ac
         i3WEXqnviVR5PYQPdhI+UkiyyHCJtjEP3t5Xotj0RkJ+6LYzOB+kljc5TWnHF28FCfRC
         Ehog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tepl+SRt;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id l11si6782vkr.5.2021.01.19.13.54.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 13:54:38 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id v19so13793402pgj.12
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 13:54:38 -0800 (PST)
X-Received: by 2002:a63:44d:: with SMTP id 74mr6274284pge.170.1611093277771;
        Tue, 19 Jan 2021 13:54:37 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id a188sm85983pfb.108.2021.01.19.13.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 13:54:37 -0800 (PST)
Date: Tue, 19 Jan 2021 13:54:34 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: David Howells <dhowells@redhat.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [dhowells-fs:fscache-netfs-lib 11/24] aarch64-linux-gnu-ld:
 warning: orphan section `.eh_frame' from `fs/fscache/page2.o' being placed
 in section `.eh_frame'
Message-ID: <20210119215434.gu6bdrh343bjitxy@google.com>
References: <202101191407.7rfreS4b-lkp@intel.com>
 <189650.1611049599@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <189650.1611049599@warthog.procyon.org.uk>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Tepl+SRt;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::533
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-01-19, David Howells wrote:
>kernel test robot <lkp@intel.com> wrote:
>
>> >> aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `fs/fscache/page2.o' being placed in section `.eh_frame'
>
>Is this a Clang bug?
>
>David

This is similar to https://github.com/ClangBuiltLinux/linux/issues/1227

Either .eh_frame : { *(.eh_frame) } should be used or -fno-asynchronous-unwind-tables is missing in some places.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210119215434.gu6bdrh343bjitxy%40google.com.
