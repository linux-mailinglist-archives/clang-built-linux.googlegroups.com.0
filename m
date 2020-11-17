Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBDWDZX6QKGQEGPFPWYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D494E2B595A
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 06:37:18 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id k1sf12394296wrg.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 21:37:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605591438; cv=pass;
        d=google.com; s=arc-20160816;
        b=qxZ/tyJHKvAOiwx1f3aCajSiFxsle164d2JUcwH7IcZbDwvCG1RQDrW9DemFYlRzYi
         30ggX3CMcBmoDAAs34ToExdeIjlkUox4jsipavq2uJ9ATrpx5tIg3mBb6lyzx9JdDcWK
         M7GwlXEG3kBknRPwRFkCzsCXXDnfI7BmJxDEDr+GIux1x3xdLGF8SbVvDtyX727AM7UL
         FTFThqazDtv4diDCCQZ4Cjuhl8go9H9oPBjSBmHFiEAlCTzvBQJxLInjmsVgAS1N5NRi
         hjz8a+EyWLygq/U440BZZAPBSSsoFge1oKXMen0CmpU3vFEBue0MCFtQDPVrXlzcDao+
         WhDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=lch1VlvBpUaMnU8JVtGudRWu2lJScHxnmXY/zlmbHZ4=;
        b=H8WSro+2UZ2by9URUp+7bFVJYcmINLOfiChZG8tLDfPErwN89BpAhpwHX4211CBcxB
         plwO6CQyx4ElUI+DMTE0CNZ/aBclxhBwTWsKdsV/91NvlxDWv1d1OGTOgStRVYrEq1zO
         AZr0VzGTcd7MVvcX1FYr91FbyO5iAkQwCUB/SJN1W7r8bj4HBOO+zm+SJXBd6ZWMcASi
         940fNM++O/iUAifBlajIosPfRObjlsOvrdx7ppXGy+E+13W+VMX48OnCzNHbZCgSek6p
         RywnEWcLxazS5w+vtN7vVQ/kjQnrfqIn9DzakFxkzPcHJdf1wjEpIoJUnUf4kX+Dsuid
         g9Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l258iBmD;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lch1VlvBpUaMnU8JVtGudRWu2lJScHxnmXY/zlmbHZ4=;
        b=D7mUVbk6A3LaFMLXyJ2EiikvJx5pp0weuMgt2jFkks3Jh+SsARWRvMngIxTT53+QB2
         YRFiYB4ji172GZgZnpJ6mBpK6q0Gn/PCXksvHvhMcRjgT6NEEZiD9pAXYOqfGNZhNqcl
         7etnDM0Bdd2HmhFLY+z6iRd+UpQmJhJ6O+sA/wZnsLuPb7TLJyg2694Lp5URA/nOAtYm
         0mBpaetf1whXikU1UJpMhaCJ5VDDhmflRWvkLRLuiSmbbAvN+elJkor2iZGVOKfIoqWJ
         ktZXNrThR/FKiD+lO2VSKsrOgCGNKmNfrTFAS8vL8E+Q/vftpIYR3zjPzadRNKD/wV6q
         /4PA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lch1VlvBpUaMnU8JVtGudRWu2lJScHxnmXY/zlmbHZ4=;
        b=KCcIUaIwgN+k1CJwMcCqAjMqwkM/OJbOevoIxAweDyZzAKlY+vN86BT2vuUEHpUtz1
         kvIAAisuZrIr0/YOXqDNvyRzDVISZiuP9gV6DjNxkNnpgHmGR4TDXB66NCCI3fTRGLDL
         lr1KNAbBVD6oERowOra7nFzfhHY/zes34fjzlUpgSMjKBnsQJvXJbWx08Dv0MKi/dEVh
         OKslakghYsVSDWZYk6bQun9TshFbn+VyRdfgaouUeG4GcSC73E97n0jO8BEPFcccksiv
         RaIs9c+bEQlDSxJxp5e7xAfNJwsdfNVtary562Sigmuft7MBU/P2Rzrts4BCstOn5cXP
         u8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lch1VlvBpUaMnU8JVtGudRWu2lJScHxnmXY/zlmbHZ4=;
        b=UXySSTsGrCiWxvOKw7vJ1CU+ZJrZuCgCNx1KAMfjAuosc4052CjB5XpHnw6OCVcXcw
         hw1zMfedVmkshkgouwRjjBlAO4ltj2l/UVxZoUurhA9QGb2FY8yccHx8VUY7CPJi6X4w
         dj+S95AGFyJH61ZC/h2bVF5KxvSj827nMjC60dpa7dXRHTOyBXsHvRz+PsUuW3IRrhbI
         XNbyjiQRPjeCPqf589AquArOUttUzVY+t/o2R6QvIa55AITShW6mpPM9t8UjAgyrfRJZ
         EXWwQa0OeHGW/ArkZvtbZPr8KXUQuvs39UV/3VpG4Pg2SlncNcvazsI8CPItpcGxrV5r
         jtXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Ucb2Kth2zXvg//gXQDsN7yDZnh1kcAw57Ht8rK30Z7NNs1xxW
	AIRwiYeS7bmzs0btj3RNHwQ=
X-Google-Smtp-Source: ABdhPJxLQJr4Bk9Tin5dP1kP3pcEfBNAp9tdoYrvJyj451wZVURpFG2ctwK16J6e5jsr0wq2lc1PHA==
X-Received: by 2002:a5d:474d:: with SMTP id o13mr24149751wrs.178.1605591438624;
        Mon, 16 Nov 2020 21:37:18 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:3d87:: with SMTP id k129ls502890wma.3.gmail; Mon, 16 Nov
 2020 21:37:17 -0800 (PST)
X-Received: by 2002:a05:600c:210a:: with SMTP id u10mr2351058wml.98.1605591437679;
        Mon, 16 Nov 2020 21:37:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605591437; cv=none;
        d=google.com; s=arc-20160816;
        b=ZI+qO35ArA/TGQzNb9C/zrRW6DOl2uTQzVMZJ0AoJogsC8ydfl2RQIr26E+BrCzfD6
         bDEFdVaE47PdpgjO8DgwRuIvk+m7gALvjPprpyoO4e8eAo4bUKTesnaZnuAlkiICB0Si
         nPVenOH77luOWvb7reZA26I4SeH8omrwm0d4lRJ2o5GVWHEClsJJZ7tJsxnk9buXWFv9
         mhrke0x9G3J68MVU4iyTAlqa+8msZICF5TfOv65iWwOThJSpo8K+7rgwaOwCf31Jm21X
         GuZd6n1fYa3QpXrlqV9uwf3YChPpT/S/vuRWSxT3OrEw8jYvhgKNhhlWUfXNWPzjOvVu
         KRQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=973CLQ4hKIcVvVlggyyxVG1OJphs1HYbDwdKvdbnPvA=;
        b=AnbQLaNOo6fDWzcywmdyRi2a8Zl9SEf05/eq/3+A4JnDq+rUcbTHp4BgA+oYlfKuPE
         hXFAvzeChPPULTHQjoM9mODMIMacw4ZZ89OwgmB3RH2bmWJuMVU+9I0V/SEEGnfNQSSo
         PK4SIEmwLptY9Sr6bAyut3FxZvcKfMhLMBA6XdIGXjfIOehOEWFpWy3gp7QcTEEK+y06
         JA1e8kURQ2yCMahJfJipIlo/vrKNmhbjGgvWm+IdC7h5dc132r0QfhfXxd4TTO2Lx/0K
         8gmL4JBklEAnHyvz1k0fzjUp+KyPsT3HJm+hZoYgd6Du4x2x1tqe+2VNHGWHPYJYS6BT
         HYyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l258iBmD;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t9si50666wmt.4.2020.11.16.21.37.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 21:37:17 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id d18so8250136edt.7
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 21:37:17 -0800 (PST)
X-Received: by 2002:aa7:d3c3:: with SMTP id o3mr19793635edr.319.1605591437341;
        Mon, 16 Nov 2020 21:37:17 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d78:5700:47c:2ce2:8782:8bbe])
        by smtp.gmail.com with ESMTPSA id f24sm11565635edx.90.2020.11.16.21.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 21:37:16 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] ring-buffer: remove obsolete rb_event_is_commit()
Date: Tue, 17 Nov 2020 06:37:03 +0100
Message-Id: <20201117053703.11275-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l258iBmD;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Commit a389d86f7fd0 ("ring-buffer: Have nested events still record running
time stamp") removed the only uses of rb_event_is_commit() in
rb_update_event() and rb_update_write_stamp().

Hence, since then, make CC=clang W=1 warns:

  kernel/trace/ring_buffer.c:2763:1:
    warning: unused function 'rb_event_is_commit' [-Wunused-function]

Remove this obsolete function.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201116

Steven, please pick this minor non-urgent clean-up patch.

 kernel/trace/ring_buffer.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/kernel/trace/ring_buffer.c b/kernel/trace/ring_buffer.c
index ab68f28b8f4b..799d790ab365 100644
--- a/kernel/trace/ring_buffer.c
+++ b/kernel/trace/ring_buffer.c
@@ -2629,9 +2629,6 @@ rb_add_time_stamp(struct ring_buffer_event *event, u64 delta, bool abs)
 	return skip_time_extend(event);
 }
 
-static inline bool rb_event_is_commit(struct ring_buffer_per_cpu *cpu_buffer,
-				     struct ring_buffer_event *event);
-
 #ifndef CONFIG_HAVE_UNSTABLE_SCHED_CLOCK
 static inline bool sched_clock_stable(void)
 {
@@ -2759,20 +2756,6 @@ static unsigned rb_calculate_event_length(unsigned length)
 	return length;
 }
 
-static __always_inline bool
-rb_event_is_commit(struct ring_buffer_per_cpu *cpu_buffer,
-		   struct ring_buffer_event *event)
-{
-	unsigned long addr = (unsigned long)event;
-	unsigned long index;
-
-	index = rb_event_index(event);
-	addr &= PAGE_MASK;
-
-	return cpu_buffer->commit_page->page == (void *)addr &&
-		rb_commit_index(cpu_buffer) == index;
-}
-
 static u64 rb_time_delta(struct ring_buffer_event *event)
 {
 	switch (event->type_len) {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117053703.11275-1-lukas.bulwahn%40gmail.com.
